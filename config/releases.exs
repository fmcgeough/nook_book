import Config

config :libcluster,
  topologies: [
    nook_book: [
      strategy: Cluster.Strategy.Epmd,
      config: [
        hosts: [
          :"nook_book@10.0.1.139",
          :"nook_book@10.0.1.28"
        ]
      ]
    ]
  ]

config :nook_book, NookBookWeb.Endpoint,
  server: true,
  http: [port: 4000],
  url: [host: "localhost"],
  secret_key_base: "kfNd9+Ai3+7+MzO4P2ocK6B1Wjk9Z3Ak11zk542NEik/2zJk9w9GzpxoCrqoE7BN"
