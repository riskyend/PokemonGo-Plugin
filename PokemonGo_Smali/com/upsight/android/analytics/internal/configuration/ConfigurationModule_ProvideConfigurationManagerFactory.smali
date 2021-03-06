.class public final Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;
.super Ljava/lang/Object;
.source "ConfigurationModule_ProvideConfigurationManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final managerConfigParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

.field private final responseParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;",
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
    .line 9
    const-class v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 6
    .param p1, "module"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p3, "responseParserProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;>;"
    .local p4, "managerConfigParserProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-boolean v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;->module:Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

    .line 30
    sget-boolean v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_1d
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 32
    sget-boolean v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_2b

    if-nez p3, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_2b
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;->responseParserProvider:Ljavax/inject/Provider;

    .line 34
    sget-boolean v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_39

    if-nez p4, :cond_39

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_39
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;->managerConfigParserProvider:Ljavax/inject/Provider;

    .line 36
    return-void
.end method

.method public static create(Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .registers 5
    .param p0, "module"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p2, "responseParserProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;>;"
    .local p3, "managerConfigParserProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;>;"
    new-instance v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;-><init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
    .registers 5

    .prologue
    .line 40
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;->module:Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 42
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;->responseParserProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;->managerConfigParserProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;

    .line 41
    invoke-virtual {v3, v0, v1, v2}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;->provideConfigurationManager(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 40
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;->get()Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    move-result-object v0

    return-object v0
.end method
