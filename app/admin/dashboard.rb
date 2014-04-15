ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    

    section "Recent Registered Students" do
      table_for Student.order("created_at desc").limit(5) do
        column :name
        column :year
        column :email
        column :created_at
      end
      strong { link_to "View All Students", admin_students_path }
    end

    section "Recent Registered Courses" do
      table_for Course.order("created_at desc").limit(5) do
        column :name
        column :created_at
      end
      strong { link_to "View All Courses", admin_courses_path }
    end
    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
