require 'liquid'

# Convert links
module ConvertLinks
  def convert_links(text)
    $linkArray = []

    $outputText = text

    def scanOutputText()
    	$linkArray = []
    	$outputText.scan(/\[([^\]]+)\]\(([^\)]+)\)/) do |c| # Regex match all [*insert text here*](*insert text here*)
    		$linkArray << [c, $~.offset(0)[0]]
    	end
    end

    scanOutputText()

    $linkArray.each_index { |i|
    	scanOutputText()
    	linkData = $linkArray[0] # Always take the first element because each time the last linkData is removed from linkArray

    	lengthToRemove = 4 # For the []()
    	linkTextData = linkData[0]
    	index = linkData[1]

    	lengthToRemove += linkTextData[0].length + linkTextData[1].length
    	$outputText = $outputText[0 , index] + "<a href='" + linkTextData[0] + "' target='_blank'>" + linkTextData[1] + "</a>" + $outputText[index + lengthToRemove, $outputText.length - 1]
    }

    return $outputText
  end
end

Liquid::Template.register_filter(ConvertLinks)
