.class Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;
.super Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/LinkedHashTreeMap",
        "<TK;TV;>.",
        "LinkedTreeMapIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;)V
    .registers 3
    .param p1, "this$1"    # Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;

    .prologue
    .line 800
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;, "Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;"
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;->this$1:Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;

    iget-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0, v0}, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;-><init>(Lcom/google/gson/internal/LinkedHashTreeMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 800
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;, "Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;"
    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 802
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;, "Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;"
    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;->nextNode()Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    return-object v0
.end method
