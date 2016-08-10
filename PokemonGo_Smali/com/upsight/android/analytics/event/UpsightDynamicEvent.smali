.class public final Lcom/upsight/android/analytics/event/UpsightDynamicEvent;
.super Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
.source "UpsightDynamicEvent.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/DynamicIdentifiers;


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "com.upsight.dynamic"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent",
        "<",
        "Lcom/google/gson/JsonElement;",
        "Lcom/google/gson/JsonElement;",
        ">;",
        "Lcom/upsight/android/analytics/internal/DynamicIdentifiers;"
    }
.end annotation


# instance fields
.field private identifiers:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;-><init>()V

    .line 107
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "identifiers"    # Ljava/lang/String;
    .param p3, "upsightData"    # Lcom/google/gson/JsonElement;
    .param p4, "publisherData"    # Lcom/google/gson/JsonElement;

    .prologue
    .line 96
    invoke-direct {p0, p1, p3, p4}, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    iput-object p2, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent;->identifiers:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public static createBuilder(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;
    .registers 3
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/analytics/event/UpsightDynamicEvent$Builder;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/UpsightDynamicEvent$1;)V

    return-object v0
.end method


# virtual methods
.method public getIdentifiersName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightDynamicEvent;->identifiers:Ljava/lang/String;

    return-object v0
.end method
