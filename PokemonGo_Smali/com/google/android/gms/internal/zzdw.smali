.class public Lcom/google/android/gms/internal/zzdw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zziz;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zziz;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbI()Lcom/google/android/gms/internal/zzdu;

    move-result-object v3

    const-string v0, "abort"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzdu;->zza(Lcom/google/android/gms/internal/zziz;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "Precache abort but no preload task running."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    const-string v0, "src"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_28

    const-string v0, "Precache video action is missing the src parameter."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    goto :goto_17

    :cond_28
    :try_start_28
    const-string v1, "player"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_33} :catch_51

    move-result v1

    move v2, v1

    :goto_35
    const-string v1, "mimetype"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    const-string v1, "mimetype"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_45
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzdu;->zzb(Lcom/google/android/gms/internal/zziz;)Z

    move-result v3

    if-eqz v3, :cond_58

    const-string v0, "Precache task already running."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    goto :goto_17

    :catch_51
    move-exception v1

    const/4 v1, 0x0

    move v2, v1

    goto :goto_35

    :cond_55
    const-string v1, ""

    goto :goto_45

    :cond_58
    invoke-interface {p1}, Lcom/google/android/gms/internal/zziz;->zzhb()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzb;->zzs(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zziz;->zzhb()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzd;->zzoG:Lcom/google/android/gms/internal/zzdx;

    invoke-interface {v3, p1, v2, v1}, Lcom/google/android/gms/internal/zzdx;->zza(Lcom/google/android/gms/internal/zziz;ILjava/lang/String;)Lcom/google/android/gms/internal/zzdv;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzdt;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/internal/zzdt;-><init>(Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/internal/zzdv;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdt;->zzgz()Ljava/util/concurrent/Future;

    goto :goto_17
.end method