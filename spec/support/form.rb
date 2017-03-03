class Form
  include Capybara::DSL

  def checkbox(model, attribute)
    find('label', text: I18n.t(".activerecord.attributes.#{model}.#{attribute}")).click
  end

  def uncheckbox(model, attribute)
    find('label', text: I18n.t(".activerecord.attributes.#{model}.#{attribute}"))
  end

  def input(model, attribute, value)
    fill_in I18n.t(".activerecord.attributes.#{model}.#{attribute}"), with: "#{value}"
  end

  def select_list(id,model, attribute)
    find("#{id}", text: I18n.t(".activerecord.attributes.#{model}.#{attribute}")).click
  end

  def submit
    find(:css, 'button[name="action"]').click
  end
end