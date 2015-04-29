module ApplicationHelper
  def build_meta_tags(description: "Description", title: nil, image: url_to_image("opengraph.png"), page_type: :website)
    main_title = "Karaoke"
    set_meta_tags(:title => title,
                  :description => description,
                  :open_graph => {
                    :title => title.nil? ? main_title : "\#{title} | \#{main_title}",
                    :description => description,
                    :type => page_type,
                    :url => url_for(:only_path => false),
                    :image => [image, { :width => 200, :height => 200 }]
                  })
  end

  def display_karaoke_machine(bar)
    if bar.karaoke_machine.present?
      link_to bar.karaoke_machine.name, bar.karaoke_machine
    else
      content_tag "em", "unknown"
    end
  end
end
