.class public Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent;
.source "UpsightMonetizationIapEvent.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.monetization.iap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;,
        Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent",
        "<",
        "Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>()V

    .line 295
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "upsightData"    # Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$UpsightData;
    .param p3, "publisherData"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .prologue
    .line 290
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    .line 291
    return-void
.end method

.method public static createBuilder(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;
    .registers 15
    .param p0, "store"    # Ljava/lang/String;
    .param p1, "iapBundle"    # Lorg/json/JSONObject;
    .param p2, "totalPrice"    # Ljava/lang/Double;
    .param p3, "price"    # Ljava/lang/Double;
    .param p4, "quantity"    # Ljava/lang/Integer;
    .param p5, "currency"    # Ljava/lang/String;
    .param p6, "product"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
