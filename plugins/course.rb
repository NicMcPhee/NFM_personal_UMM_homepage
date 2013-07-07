module Jekyll
  class CourseIndex < Page
    def initialize(site, base, dir)
      @site = site
      @base = base
      @dir  = dir
      @name = "index.html"

      self.read_yaml(File.join(base, '_layouts'), 'course.html')
      self.data['course'] = self.get_course(site)
      self.process(@name)
    end

    def get_course(site)
      {}.tap do |course|
        Dir['_courses/*.yml'].each do |path|
          name   = File.basename(path, '.yml')
          config = YAML.load(File.read(File.join(@base, path)))
          type   = config['type']

          course[type] = {} if course[type].nil?
          course[type][name] = config
        end
      end
    end
  end

  class CoursePage < Page
    def initialize(site, base, dir, path)
      @site     = site
      @base     = base
      @dir      = dir
      @name     = "index.html"
      self.data = YAML.load(File.read(File.join(@base, path)))
      self.data['title'] = "#{self.data['discipline']} #{self.data['number']}, #{self.data['semester']} #{self.data['year']}"
      puts self.data
      puts @contents
      self.process(@name)
    end
  end

  class GenerateCourses < Generator
    safe true
    priority :normal

    def generate(site)
      write_courses(site)
    end

    # Loops through the list of course pages and processes each one.
    def write_courses(site)
      puts "Site source: #{site.source}"
      base = File.join(site.source, '_courses')
      puts "About to write courses"
      puts Dir.getwd
      return unless File.exists?(base)
      
      puts "Found _courses"
      Dir.chdir(base)
      puts Dir.getwd

      Dir["*.markdown"].each do |path|
        puts "Processing #{path}"
        name = File.basename(path, '.markdown')
        self.write_course_page(site, "_courses/#{path}", name)
      end

      Dir.chdir(site.source)
      self.write_course_index(site)
    end

    def write_course_index(site)
      courses = CourseIndex.new(site, site.source, "/courses")
      courses.render(site.layouts, site.site_payload)
      courses.write(site.dest)

      site.pages << courses
      site.static_files << courses
    end

    def write_course_page(site, path, name)
      course = CoursePage.new(site, site.source, "/courses/#{name}", path)

      p course.data
      
      course.render(site.layouts, site.site_payload)
      course.write(site.dest)

      site.pages << course
      site.static_files << course
    end
  end

  # I think this is how I want to handle grouping coures by things like semesters and years
=begin
  class AuthorsTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text   = text
      @tokens = tokens
    end

    def render(context)
      site = context.environments.first["site"]
      page = context.environments.first["page"]

      if page
        authors = page['author']
        authors = [authors] if authors.is_a?(String)

        "".tap do |output|
          authors.each do |author|
            data     = YAML.load(File.read(File.join(site['source'], '_course', "#{author.downcase.gsub(' ', '-')}.yml")))
            template = File.read(File.join(site['source'], '_includes', 'author.html'))

            output << Liquid::Template.parse(template).render('author' => data)
          end
        end
      end
    end
  end
=end
end

# Liquid::Template.register_tag('authors', Jekyll::AuthorsTag)