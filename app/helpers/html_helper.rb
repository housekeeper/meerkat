module HtmlHelper

  #BOOT STRAP NAVIGATION HELPER
  def nav_item(name, link_opts)
    link2 = link_to name, link_opts, nil
    actcls = current_page?(link_opts) ? "class=\"active\"" : ""
    "<li #{actcls} > #{link2} </li>".html_safe
  end
  
  #GENERAL FORM / ERROR / NOTICE HELPER
  def alert(msg, type='info')
    result = render :layout => "shared/msg", :locals => { :type => type } do
      msg
    end
  end
  
  def link_to_google_map(options)
    size         = options[:size] || "340x340"
    search       = map_link_fix(options[:search_term]) || ""
    style        = map_link_style(:size => size, :search_term => search) 
    link_to "", "https://maps.google.com/maps?q=#{search}", :style => style, :class => "map", :target => :blank    
  end

  def model_to_tablename(o)
    o.class.name.to_s.underscore.downcase
  end

  def twipsy_link_to(*args, &block)
    if block_given?
      html_options = args.second
      twipsy_link_to(capture(&block), options, html_options)
    else
      twipsy_options = {'rel' => "twipsy"}
      name         = args[0]
      options      = args[1] || {}
      html_options = args[2]      
      html_options[:class] = "twipsy-link" if html_options.has_key?(:class)
      html_options[:name]  = "no name set" if html_options.has_key?(:name)
      link_to(name, options, html_options.merge(twipsy_options))
    end
  end

  def to_css_name(name)
    name.gsub(/,/, "").gsub(/ /, "-").downcase
  end

  def link_to_dropbox(name, object)
    email = "#{name}-dropbox-#{object.id}@#{ActionMailer::Base.smtp_settings[:domain]}"
    mailto = "?bcc=#{email}"
    link_to(image_tag('cc/black/png/mail_icon&16.png' ), "mailto:#{mailto}", :title => email)
  end

private

  def map_link_fix(text)
    text.gsub(/\W/, '+')
  end
  
  def map_link_style(options)
    size         = options[:size] || "340x340"
    search_term  = options[:search_term] || ""
    width_height = size.split("x")
    "width:#{width_height[0]}px;height:#{width_height[1]}px;background-image:url(https://maps.google.com/maps/api/staticmap?visible=#{search_term}&size=#{size}&sensor=false&maptype=terrain&markers=size:small|color:red|#{search_term});"
  end
  

end
