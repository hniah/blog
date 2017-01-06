# -*- coding: utf-8 -*-
SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
  	primary.dom_class = 'sidebar-menu'
    primary.selected_class = 'active'

    primary.item :home, fa_icon('home', text: '<span>Home</span>'.html_safe), admin_dashboards_path


    primary.item :categories, fa_icon('envelope', text: '<span>Categories</span>'.html_safe), admin_categories_path
    primary.item :blogs, fa_icon('cog', text: '<span>Blogs</span>'.html_safe), admin_blogs_path
  end
end

