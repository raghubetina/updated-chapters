class DraftHtml < Kramdown::Converter::Html
  def convert_codeblock(el, opts)
    <<-HTML.strip_heredoc
      <div class="code-block">
        #{super(el, opts)}
      </div>
    HTML
  end

  def convert_table(el, indent)
    <<-HTML.strip_heredoc
      <div class="table-responsive">
        #{super(el, indent).gsub('<table', '<table class="table table-bordered table-hover"')}
      </div>
    HTML
  end

  def convert_hr(el, indent)
    # div.hr-responsive is a hack to fix non-responsiveness
    #  By itself, hr renders too wide on small and causes horizontal scroll
    <<-HTML.strip_heredoc
      <div class="hr-responsive">
        #{super(el, indent)}
      </div>
    HTML
  end

  def convert_img(el, _indent)
    <<-HTML.strip_heredoc
      <div class="image-section">
        #{super(el, indent).gsub('<img', '<img class="img-fluid w-100"')}
      </div>
    HTML
  end
end
