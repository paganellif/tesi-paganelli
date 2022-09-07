private val utilModule = module {
    factory { getDispatcherProvider() }
    single { JwtManager(getKVaultProvider().kvault) }
    single { MaggioliEbookDB(createDriver("maggioliebook.db")) }
}

private val dataSourceModule = module {
    factory { FavoriteDataSource(get(), get()) }
    factory { HighlightDataSource(get(), get()) }
    factory { BookmarkDataSource(get(), get()) }
    factory { ProgressionDataSource(get(), get()) }
    factory { LoginDataSource(get(), get()) }
    factory { UserDataSource(get(), get()) }
    factory { LibroDataSource(get(), get()) }
}

private val repositoryModule = module {
    single { LibroRepository() }
    single { UserRepository() }
}

fun initKoin(appDeclaration: KoinAppDeclaration = {}) = startKoin {
    appDeclaration()
    modules(listOf(utilModule, dataSourceModule, repositoryModule))
}