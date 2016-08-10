.class public final Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;
.super Ljava/lang/Object;
.source "DispatchModule_ProvideDispatcherFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final configParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/AnalyticsContext;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

.field private final routerBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final schemaSelectorBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final upsightProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 9
    .param p1, "module"    # Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/AnalyticsContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p3, "sessionManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/SessionManager;>;"
    .local p4, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/AnalyticsContext;>;"
    .local p5, "configParserProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;>;"
    .local p6, "routerBuilderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;>;"
    .local p7, "schemaSelectorBuilderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-boolean v0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->module:Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

    .line 42
    sget-boolean v0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_1d
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 44
    sget-boolean v0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_2b

    if-nez p3, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :cond_2b
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 46
    sget-boolean v0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_39

    if-nez p4, :cond_39

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_39
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->contextProvider:Ljavax/inject/Provider;

    .line 48
    sget-boolean v0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_47

    if-nez p5, :cond_47

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_47
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->configParserProvider:Ljavax/inject/Provider;

    .line 50
    sget-boolean v0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_55

    if-nez p6, :cond_55

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_55
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->routerBuilderProvider:Ljavax/inject/Provider;

    .line 52
    sget-boolean v0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_63

    if-nez p7, :cond_63

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_63
    iput-object p7, p0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->schemaSelectorBuilderProvider:Ljavax/inject/Provider;

    .line 54
    return-void
.end method

.method public static create(Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .registers 15
    .param p0, "module"    # Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/AnalyticsContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p2, "sessionManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/SessionManager;>;"
    .local p3, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/AnalyticsContext;>;"
    .local p4, "configParserProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;>;"
    .local p5, "routerBuilderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;>;"
    .local p6, "schemaSelectorBuilderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;>;"
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;
    .registers 8

    .prologue
    .line 58
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->module:Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 60
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/UpsightContext;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 61
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/analytics/internal/session/SessionManager;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->contextProvider:Ljavax/inject/Provider;

    .line 62
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/analytics/internal/AnalyticsContext;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->configParserProvider:Ljavax/inject/Provider;

    .line 63
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->routerBuilderProvider:Ljavax/inject/Provider;

    .line 64
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->schemaSelectorBuilderProvider:Ljavax/inject/Provider;

    .line 65
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

    .line 59
    invoke-virtual/range {v0 .. v6}, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;->provideDispatcher(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/internal/session/SessionManager;Lcom/upsight/android/analytics/internal/AnalyticsContext;Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;)Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 58
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->get()Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    move-result-object v0

    return-object v0
.end method
