module ExistingTable
    require 'terminal-table'
    require 'rainbow'
    module_function
    def start_existing_table
        rows = []
        rows << ['meditation', 'Tuesday', '1.30PM']
        rows << :separator
        rows << ['yoga', 'Monday', '3AM']
        rows << :separator
        rows << ['boxing', 'Thursday', '8PM']
        rows << :separator
        rows << ['hide_seek', 'Friday', '2PM']
        rows << :separator
        rows << ['running', 'Monday', '8PM']
        rows << :separator
        rows << ['swimming', 'Wedesday', '3PM']
        
        table = Terminal::Table.new :title => Rainbow("Time Table").lime, :headings => [Rainbow('Activity').greenyellow, Rainbow('Date').greenyellow, Rainbow('Time').greenyellow], :rows => rows 
        table.style = {:width => 100, :padding_left => 3, :border_x => "=", :border_i => "x"}
        puts table
    end
end

