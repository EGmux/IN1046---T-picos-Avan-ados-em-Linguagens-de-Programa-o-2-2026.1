#import "@preview/touying:0.6.1": *
#import "cintheme.typ": *

#show: cintheme.with(
  aspect-ratio: "16-9",
  // Add your presentation info
  config-info(
    title: [Feature Modelling],
    author: [Enzo Gurgel Bissoli(egb2)],
    date: datetime.today(),
    institution: [UFPE CIn],
    logo: image("cinhorizontalmark.png",height: 1.5cm) ,  // Optional
    logoalternative: image("cinhorizontalmarkcolored.png", height: 1.5cm),
    placeholder: [],
  ),
)

#title-slide()
#show link: underline

= Feature Modeling Exercises

#slide()[
  == Fundamentos de Modelagem de Features
  #grid(
  columns: (1fr, 1fr),
  column-gutter: 0.5em,
  align(center)[
  #v(0.25fr)
  #image("assets/featureModellingQ1.png", height: 9cm)
  #v(1fr)
  ],
  align(left)[
    #v(0.25fr)
      
    #text(12pt, fill: blue,weight: "bold")[
      a) Um modelo de feature é um modelo que define quais os possíveis produtos de uma linha de produtos de software, para tal o modelo codifica cada produto como uma expressão booleana tal que cada literal é uma feature.
      Modelo de features são essenciais para lidar com problemas de variabilidade em escala, guiar implementação, manutenção e evolução de produtos e ser um artefato para alinhamento de decisão com stakeholders.
    ] 

    #text(12pt, fill: blue,weight: "bold")[
      b) O modelo apresentado define o conceito de um aplicativo móvel (root node) e cada feature no espaço do problema é mapeada em nós intermediários (Login, Notifications, Payment e Analytics) por fim o modelo apresenta um mapeamento para espaço de solução através de features que estão agrupadas nos nós intermediários.
    ]
	e
    #v(1fr)
  ]
  )

  ]

