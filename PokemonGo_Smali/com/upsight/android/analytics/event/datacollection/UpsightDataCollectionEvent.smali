.class public Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent;
.source "UpsightDataCollectionEvent.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.data_collection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;,
        Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent",
        "<",
        "Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>()V

    .line 148
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "upsightData"    # Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;
    .param p3, "publisherData"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    .line 144
    return-void
.end method

.method public static createBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;
    .registers 3
    .param p0, "dataBundle"    # Ljava/lang/String;
    .param p1, "streamId"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
