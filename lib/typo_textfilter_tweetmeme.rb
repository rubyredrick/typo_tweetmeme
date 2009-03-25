class Typo
  class Textfilter
    class Tweetmeme < TextFilterPlugin::MacroPost
      plugin_display_name "Tweetmeme" 
      plugin_description "Adds the javascript for a tweetmeme retweet badge"

      def self.help_text
        %{
          You can use `<typo:tweetmeme>` to add the javascript for a tweetmeme retweet badge for the current article
        }
      end

      def self.macrofilter(blog,content,attrib,params,text="")
        %{
          <script type="text/javascript">
          tweetmeme_url = &#8216;#{content.permalink_url}&#8217;;
          </script>
          <script type="text/javascript" src="http://tweetmeme.com/i/scripts/button.js"></script>
          }
      end
    end
  end
end
      