.class public final Lcom/unity3d/player/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/pm/PackageItemInfo;)Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "unityplayer.SkipPermissionsDialog"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    :goto_8
    return v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_8
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-static {v2}, Lcom/unity3d/player/n;->a(Landroid/content/pm/PackageItemInfo;)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-static {v3}, Lcom/unity3d/player/n;->a(Landroid/content/pm/PackageItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_28
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2b} :catch_2c

    goto :goto_3

    :catch_2c
    move-exception v2

    :cond_2d
    :try_start_2d
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v3, :cond_40

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    :cond_40
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v2

    :goto_48
    if-ge v0, v4, :cond_b2

    aget-object v5, v2, v0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4c} :catch_98

    const/16 v6, 0x80

    :try_start_4e
    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5a

    :cond_57
    :goto_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_5a
    invoke-virtual {p1, v5}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4e .. :try_end_63} :catch_64
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_63} :catch_98

    goto :goto_57

    :catch_64
    move-exception v6

    const/4 v6, 0x5

    :try_start_66
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to get permission info for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", manifest likely missing custom permission declaration"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unity3d/player/m;->Log(ILjava/lang/String;)V

    const/4 v6, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Permission "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ignored"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/unity3d/player/m;->Log(ILjava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_97} :catch_98

    goto :goto_57

    :catch_98
    move-exception v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to query for permission: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unity3d/player/m;->Log(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_b2
    :try_start_b2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_3

    :cond_bd
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/unity3d/player/n$1;

    invoke-direct {v1, p0, v3, v0, p2}, Lcom/unity3d/player/n$1;-><init>(Lcom/unity3d/player/n;Ljava/util/List;Landroid/app/FragmentManager;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_d1} :catch_98

    goto/16 :goto_3
.end method
