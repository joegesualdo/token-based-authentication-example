class PostSerializer < BaseSerializer
  attributes :id, :title, :param

  def param
    namePortion = email.split('@').first
    "#{id}-#{namePortion.dasherize.parameterize}"
  end
end
