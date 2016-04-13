class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout 'mailer'

  def markdown_mail(*args)
    md_template = render "#{action_name}.md", layout: false

    mail(*args) do |format|
      format.text do
        render text: md_template, layout: 'mailer'
      end
      format.html do
        content = MD.render(md_template)
        render html: content, layout: 'mailer'
      end
    end
  end
end
