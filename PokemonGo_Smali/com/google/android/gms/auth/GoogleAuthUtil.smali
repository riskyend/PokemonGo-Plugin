.class public final Lcom/google/android/gms/auth/GoogleAuthUtil;
.super Ljava/lang/Object;


# static fields
.field public static final CHANGE_TYPE_ACCOUNT_ADDED:I = 0x1

.field public static final CHANGE_TYPE_ACCOUNT_REMOVED:I = 0x2

.field public static final CHANGE_TYPE_ACCOUNT_RENAMED_FROM:I = 0x3

.field public static final CHANGE_TYPE_ACCOUNT_RENAMED_TO:I = 0x4

.field public static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field public static final KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;

.field public static final KEY_CALLER_UID:Ljava/lang/String;

.field public static final KEY_REQUEST_ACTIONS:Ljava/lang/String; = "request_visible_actions"

.field public static final KEY_REQUEST_VISIBLE_ACTIVITIES:Ljava/lang/String; = "request_visible_actions"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_SUPPRESS_PROGRESS_SCREEN:Ljava/lang/String; = "suppressProgressScreen"

.field private static final zzRw:Landroid/content/ComponentName;

.field private static final zzRx:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2b

    const-string v0, "callerUid"

    :goto_8
    sput-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_CALLER_UID:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2e

    const-string v0, "androidPackageName"

    :goto_12
    sput-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.auth.GetToken"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzRw:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.recovery.RecoveryService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzRx:Landroid/content/ComponentName;

    return-void

    :cond_2b
    const-string v0, "callerUid"

    goto :goto_8

    :cond_2e
    const-string v0, "androidPackageName"

    goto :goto_12
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearToken(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;,
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Calling this from your main thread can lead to deadlock"

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzx;->zzcj(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzaa(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "clientPackageName"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29

    sget-object v3, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    new-instance v2, Lcom/google/android/gms/common/zza;

    invoke-direct {v2}, Lcom/google/android/gms/common/zza;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzl;->zzal(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzl;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzRw:Landroid/content/ComponentName;

    const-string v4, "GoogleAuthUtil"

    invoke-virtual {v3, v0, v2, v4}, Lcom/google/android/gms/common/internal/zzl;->zza(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    :try_start_3c
    invoke-virtual {v2}, Lcom/google/android/gms/common/zza;->zzno()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzau$zza;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzau;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzau;->zza(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "booleanResult"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    new-instance v0, Lcom/google/android/gms/auth/GoogleAuthException;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_5c} :catch_5c
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_5c} :catch_7d
    .catchall {:try_start_3c .. :try_end_5c} :catchall_6c

    :catch_5c
    move-exception v0

    :try_start_5d
    const-string v1, "GoogleAuthUtil"

    const-string v4, "GMS remote exception "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "remote exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception v0

    sget-object v1, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzRw:Landroid/content/ComponentName;

    const-string v4, "GoogleAuthUtil"

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/common/internal/zzl;->zzb(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    throw v0

    :cond_75
    sget-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzRw:Landroid/content/ComponentName;

    const-string v1, "GoogleAuthUtil"

    invoke-virtual {v3, v0, v2, v1}, Lcom/google/android/gms/common/internal/zzl;->zzb(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void

    :catch_7d
    move-exception v0

    :try_start_7e
    new-instance v0, Lcom/google/android/gms/auth/GoogleAuthException;

    const-string v1, "Interrupted"

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_6c

    :cond_86
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not bind to service with the given context."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAccountChangeEvents(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;
    .registers 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "eventIndex"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/AccountChangeEvent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "accountName must be provided"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcj(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzaa(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/gms/common/zza;

    invoke-direct {v1}, Lcom/google/android/gms/common/zza;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzl;->zzal(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzl;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzRw:Landroid/content/ComponentName;

    const-string v3, "GoogleAuthUtil"

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/common/internal/zzl;->zza(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    :try_start_24
    invoke-virtual {v1}, Lcom/google/android/gms/common/zza;->zzno()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzau$zza;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzau;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    invoke-direct {v3}, Lcom/google/android/gms/auth/AccountChangeEventsRequest;-><init>()V

    invoke-virtual {v3, p2}, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->setEventIndex(I)Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzau;->zza(Lcom/google/android/gms/auth/AccountChangeEventsRequest;)Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/AccountChangeEventsResponse;->getEvents()Ljava/util/List;
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_40} :catch_49
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_40} :catch_62
    .catchall {:try_start_24 .. :try_end_40} :catchall_59

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzRw:Landroid/content/ComponentName;

    const-string v4, "GoogleAuthUtil"

    invoke-virtual {v2, v3, v1, v4}, Lcom/google/android/gms/common/internal/zzl;->zzb(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-object v0

    :catch_49
    move-exception v0

    :try_start_4a
    const-string v3, "GoogleAuthUtil"

    const-string v4, "GMS remote exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/io/IOException;

    const-string v3, "remote exception"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_59
    .catchall {:try_start_4a .. :try_end_59} :catchall_59

    :catchall_59
    move-exception v0

    sget-object v3, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzRw:Landroid/content/ComponentName;

    const-string v4, "GoogleAuthUtil"

    invoke-virtual {v2, v3, v1, v4}, Lcom/google/android/gms/common/internal/zzl;->zzb(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    throw v0

    :catch_62
    move-exception v0

    :try_start_63
    new-instance v0, Lcom/google/android/gms/auth/GoogleAuthException;

    const-string v3, "Interrupted"

    invoke-direct {v0, v3}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_59

    :cond_6b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not bind to service with the given context."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAccountId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "accountName must be provided"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcj(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzaa(Landroid/content/Context;)V

    const-string v0, "^^_account_id_^^"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableAuthException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableAuthException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->zza(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/TokenData;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableAuthException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableAuthException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0, p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTokenWithNotification(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableNotifiedException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzb(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/TokenData;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTokenWithNotification(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "callback"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableNotifiedException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .prologue
    invoke-static {p4}, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzi(Landroid/content/Intent;)V

    if-nez p3, :cond_a

    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "extras":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .restart local p3    # "extras":Landroid/os/Bundle;
    :cond_a
    const-string v0, "callback_intent"

    invoke-virtual {p3, v0, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "handle_notification"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzc(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/TokenData;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTokenWithNotification(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "syncBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableNotifiedException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .prologue
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority cannot be empty or null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez p3, :cond_15

    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "extras":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .restart local p3    # "extras":Landroid/os/Bundle;
    :cond_15
    if-nez p5, :cond_1c

    new-instance p5, Landroid/os/Bundle;

    .end local p5    # "syncBundle":Landroid/os/Bundle;
    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .restart local p5    # "syncBundle":Landroid/os/Bundle;
    :cond_1c
    invoke-static {p5}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    const-string v0, "authority"

    invoke-virtual {p3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sync_extras"

    invoke-virtual {p3, v0, p5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "handle_notification"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzc(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/TokenData;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTokenWithNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableNotifiedException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0, p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getTokenWithNotification(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTokenWithNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "callback"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableNotifiedException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0, p2, p3, p4}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getTokenWithNotification(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTokenWithNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "syncBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableNotifiedException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    new-instance v1, Landroid/accounts/Account;

    const-string v0, "com.google"

    invoke-direct {v1, p1, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getTokenWithNotification(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static invalidateToken(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableAuthException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcj(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzaa(Landroid/content/Context;)V

    if-nez p3, :cond_81

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "clientPackageName"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    sget-object v3, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    const-string v2, "service_connection_start_time_millis"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v2, Lcom/google/android/gms/common/zza;

    invoke-direct {v2}, Lcom/google/android/gms/common/zza;-><init>()V

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzl;->zzal(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzl;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzRw:Landroid/content/ComponentName;

    const-string v4, "GoogleAuthUtil"

    invoke-virtual {v1, v3, v2, v4}, Lcom/google/android/gms/common/internal/zzl;->zza(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d0

    :try_start_4b
    invoke-virtual {v2}, Lcom/google/android/gms/common/zza;->zzno()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzau$zza;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzau;

    move-result-object v3

    invoke-interface {v3, p1, p2, v0}, Lcom/google/android/gms/internal/zzau;->zza(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_87

    const-string v0, "GoogleAuthUtil"

    const-string v3, "Binder call returned null."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/auth/GoogleAuthException;

    const-string v3, "ServiceUnavailable"

    invoke-direct {v0, v3}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_68} :catch_68
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_68} :catch_b5
    .catchall {:try_start_4b .. :try_end_68} :catchall_78

    :catch_68
    move-exception v0

    :try_start_69
    const-string v3, "GoogleAuthUtil"

    const-string v4, "GMS remote exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/io/IOException;

    const-string v3, "remote exception"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_78
    .catchall {:try_start_69 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception v0

    sget-object v3, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzRw:Landroid/content/ComponentName;

    const-string v4, "GoogleAuthUtil"

    invoke-virtual {v1, v3, v2, v4}, Lcom/google/android/gms/common/internal/zzl;->zzb(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    throw v0

    :cond_81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_13

    :cond_87
    :try_start_87
    const-string v3, "tokenDetails"

    invoke-static {v0, v3}, Lcom/google/android/gms/auth/TokenData;->zza(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/android/gms/auth/TokenData;
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_8c} :catch_68
    .catch Ljava/lang/InterruptedException; {:try_start_87 .. :try_end_8c} :catch_b5
    .catchall {:try_start_87 .. :try_end_8c} :catchall_78

    move-result-object v3

    if-eqz v3, :cond_97

    sget-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzRw:Landroid/content/ComponentName;

    const-string v4, "GoogleAuthUtil"

    invoke-virtual {v1, v0, v2, v4}, Lcom/google/android/gms/common/internal/zzl;->zzb(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-object v3

    :cond_97
    :try_start_97
    const-string v3, "Error"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "userRecoveryIntent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v3}, Lcom/google/android/gms/auth/firstparty/shared/zzd;->zzbE(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/zzd;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/auth/firstparty/shared/zzd;->zza(Lcom/google/android/gms/auth/firstparty/shared/zzd;)Z

    move-result v5

    if-eqz v5, :cond_be

    new-instance v4, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    invoke-direct {v4, v3, v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    throw v4
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_b5} :catch_68
    .catch Ljava/lang/InterruptedException; {:try_start_97 .. :try_end_b5} :catch_b5
    .catchall {:try_start_97 .. :try_end_b5} :catchall_78

    :catch_b5
    move-exception v0

    :try_start_b6
    new-instance v0, Lcom/google/android/gms/auth/GoogleAuthException;

    const-string v3, "Interrupted"

    invoke-direct {v0, v3}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_be
    .catchall {:try_start_b6 .. :try_end_be} :catchall_78

    :cond_be
    :try_start_be
    invoke-static {v4}, Lcom/google/android/gms/auth/firstparty/shared/zzd;->zzc(Lcom/google/android/gms/auth/firstparty/shared/zzd;)Z

    move-result v0

    if-eqz v0, :cond_ca

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ca
    new-instance v0, Lcom/google/android/gms/auth/GoogleAuthException;

    invoke-direct {v0, v3}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_be .. :try_end_d0} :catch_68
    .catch Ljava/lang/InterruptedException; {:try_start_be .. :try_end_d0} :catch_b5
    .catchall {:try_start_be .. :try_end_d0} :catchall_78

    :cond_d0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not bind to service with the given context."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzaa(Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzaa(Landroid/content/Context;)V
    :try_end_3
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_3} :catch_17

    return-void

    :catch_4
    move-exception v0

    new-instance v1, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;

    invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getConnectionStatusCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    throw v1

    :catch_17
    move-exception v0

    new-instance v1, Lcom/google/android/gms/auth/GoogleAuthException;

    invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static zzb(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableNotifiedException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    if-nez p3, :cond_7

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_7
    const-string v0, "handle_notification"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->zzc(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object v0

    return-object v0
.end method

.method private static zzc(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    if-nez p3, :cond_7

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_7
    :try_start_7
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->zza(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzac(Landroid/content/Context;)V
    :try_end_e
    .catch Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException; {:try_start_7 .. :try_end_e} :catch_f
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_7 .. :try_end_e} :catch_1f

    return-object v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;->getConnectionStatusCode()I

    move-result v0

    invoke-static {v0, p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorNotification(ILandroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/auth/UserRecoverableNotifiedException;

    const-string v1, "User intervention required. Notification has been pushed."

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/UserRecoverableNotifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1f
    move-exception v0

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzac(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/auth/UserRecoverableNotifiedException;

    const-string v1, "User intervention required. Notification has been pushed."

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/UserRecoverableNotifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzi(Landroid/content/Intent;)V
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_10
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_13
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter callback contains invalid data. It must be serializable using toUri() and parseUri()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
