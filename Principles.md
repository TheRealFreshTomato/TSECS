TSECS Core Principles

1. Entities are identifiers.
2. Components contain data.
3. Systems contain behavior.
4. The World manages ECS state.
5. Systems operate on component data.
6. Data-oriented design is preferred.
7. Hot paths should minimize allocations.
8. Caching should be intentional and measurable.
9. TSECS should be usable on both the client and server.
10. The public API should remain simple.

Performance Principles

1. Prefer data-oriented storage.
2. Minimize unnecessary allocations.
3. Recycle entity IDs.
4. Use object pools where repeated allocation is measurable.
5. Do not pool indiscriminately.
6. Benchmark optimizations before and after.

World Structure 1.

World
├── .new()
├── :Destroy()
│
├── Entity
│   ├── :CreateEntity()
│   ├── :DestroyEntity(entity)
│   └── :IsEntityValid(entity)
│
├── Component
│   ├── :Add(entity, component, data)
│   ├── :Remove(entity, component)
│   ├── :Has(entity, component)
│   └── :Get(entity, component)
│
├── Query
│   └── :Query(...)
│
└── Systems
    ├── :AddSystem(...)
    └── :RemoveSystem(...)