.class Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;
.super Ljava/lang/Object;
.source "GooglePushServices.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->unregisterInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;


# direct methods
.method constructor <init>(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 6

    .prologue
    .line 270
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    monitor-enter v3

    .line 271
    :try_start_3
    invoke-static {}, Lcom/upsight/android/analytics/event/comm/UpsightCommUnregisterEvent;->createBuilder()Lcom/upsight/android/analytics/event/comm/UpsightCommUnregisterEvent$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;
    invoke-static {v4}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$000(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Lcom/upsight/android/UpsightContext;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/upsight/android/analytics/event/comm/UpsightCommUnregisterEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 273
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingUnregisterListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$400(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 274
    .local v1, "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;>;"
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingUnregisterListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$400(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 276
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    const/4 v4, 0x0

    # setter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUnregistrationIsInProgress:Z
    invoke-static {v2, v4}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$502(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Z)Z

    .line 277
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_3f

    .line 279
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;

    .line 280
    .local v0, "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;
    invoke-interface {v0}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;->onSuccess()V

    goto :goto_2f

    .line 277
    .end local v0    # "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;
    .end local v1    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;>;"
    :catchall_3f
    move-exception v2

    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v2

    .line 282
    .restart local v1    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;>;"
    :cond_42
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 288
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    monitor-enter v3

    .line 289
    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingUnregisterListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$400(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 290
    .local v1, "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;>;"
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingUnregisterListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$400(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 292
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    const/4 v4, 0x0

    # setter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUnregistrationIsInProgress:Z
    invoke-static {v2, v4}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$502(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Z)Z

    .line 293
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_37

    .line 295
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;

    .line 296
    .local v0, "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;
    new-instance v3, Lcom/upsight/android/UpsightException;

    invoke-direct {v3, p1}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v3}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;->onFailure(Lcom/upsight/android/UpsightException;)V

    goto :goto_22

    .line 293
    .end local v0    # "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;
    .end local v1    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;>;"
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v2

    .line 298
    .restart local v1    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;>;"
    :cond_3a
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 265
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .registers 2
    .param p1, "args"    # Ljava/lang/String;

    .prologue
    .line 303
    return-void
.end method
