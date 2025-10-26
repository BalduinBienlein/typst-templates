#let template(titel, enable-header, doc) = {
    set page(header: if enable-header { context { 
                if counter(page).get().first() == 1 [
                    #text(size: 12pt)[
                        Tobias Karuth
                        #h(1fr)
                        #titel
                        #h(1fr)
                        #datetime.today().display("[day] [month repr:long] [year]")
                    ]
                ]

                else [
                    #text(size: 12pt)[
                        Tobias Karuth
                        #h(1fr)
                        #datetime.today().display("[day] [month repr:long] [year]")
                    ]
                ]
        }
    },

    footer: context {
        text(size: 12pt)[
            #align(right)[
                #counter(page).get().first() of #counter(page).final().at(0)
            ]
        ]
    })

    doc
}
