.class Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;
.super Ljava/lang/Object;
.source "ByFilterSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Filter"
.end annotation


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "."


# instance fields
.field private final mFilter:Ljava/lang/String;

.field private final mIsWildcard:Z

.field private final mMatcher:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "filterString"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;->mFilter:Ljava/lang/String;

    .line 107
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;->mIsWildcard:Z

    .line 108
    const-string v0, "\\*"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;->mMatcher:Ljava/lang/String;

    .line 109
    return-void
.end method


# virtual methods
.method public getFilter()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterIfBetter(Ljava/lang/String;Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;)Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;
    .registers 5
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "previousMatch"    # Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;->mMatcher:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;->mMatcher:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;->mMatcher:Ljava/lang/String;

    const-string v1, "."

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;->mIsWildcard:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;->mMatcher:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_26
    if-eqz p2, :cond_38

    .line 124
    invoke-virtual {p2}, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;->getMatcher()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;->mMatcher:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_39

    :cond_38
    move-object p2, p0

    .line 127
    .end local p2    # "previousMatch":Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;
    :cond_39
    return-object p2
.end method

.method public getMatcher()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;->mMatcher:Ljava/lang/String;

    return-object v0
.end method
