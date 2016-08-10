.class public Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
.super Lcom/nianticlabs/pokemongoplus/ble/Peripheral;
.source "SfidaPeripheral.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private final bluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private connectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

.field private context:Landroid/content/Context;

.field private disconnectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

.field private discoverServicesCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

.field private gatt:Landroid/bluetooth/BluetoothGatt;

.field private nativeHandle:J

.field private scanRecord:[B

.field private final serviceRef:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticlabs/pokemongoplus/SfidaService;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;[B)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "scanRecord"    # [B

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/ble/Peripheral;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$1;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 348
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$5;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$5;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->context:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 106
    sget-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Disconnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 107
    invoke-static {p1}, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->getBluetoothManager(Landroid/content/Context;)Landroid/bluetooth/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 108
    iput-object p3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->scanRecord:[B

    .line 109
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->nativeDiscoverServicesCallback(ZI)V

    return-void
.end method

.method static synthetic access$300(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->nativeConnectCallback(ZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->nativeDisconnectCallback(ZI)V

    return-void
.end method

.method static synthetic access$500(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->onPairingRequest(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private bondingCanceled(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 402
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "bondingCanceled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {p1}, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->createBond(Landroid/bluetooth/BluetoothDevice;)V

    .line 404
    return-void
.end method

.method private byteArrayFromHexString(Ljava/lang/String;)[B
    .registers 9
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 148
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 149
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_2a

    .line 150
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    .line 151
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 149
    add-int/lit8 v1, v1, 0x2

    goto :goto_b

    .line 153
    :cond_2a
    return-object v0
.end method

.method private disconnectFromBonding(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 396
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "disconnectFromBonding()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->unpairDevice()V

    .line 399
    return-void
.end method

.method private isBoundDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Boolean;
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 333
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 335
    .local v1, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_32

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_32

    .line 336
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 337
    .local v0, "bondedDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "hardwareAddress":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 340
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 344
    .end local v0    # "bondedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "hardwareAddress":Ljava/lang/String;
    :goto_31
    return-object v3

    :cond_32
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_31
.end method

.method private native nativeConnectCallback(ZI)V
.end method

.method private native nativeDisconnectCallback(ZI)V
.end method

.method private native nativeDiscoverService(Lcom/nianticlabs/pokemongoplus/SfidaService;)V
.end method

.method private native nativeDiscoverServicesCallback(ZI)V
.end method

.method private onBondStateChanged(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v4, -0x80000000

    .line 422
    const-string v3, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 423
    .local v1, "newState":I
    const-string v3, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 425
    .local v2, "oldState":I
    sget-object v3, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BLE] ACTION_BOND_STATE_CHANGED oldState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 426
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->getBondStateName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u2192 newState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 427
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->getBondStateName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 425
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 431
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_45

    .line 432
    packed-switch v1, :pswitch_data_7a

    .line 456
    :cond_45
    :goto_45
    :pswitch_45
    return-void

    .line 436
    :pswitch_46
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->tryCompleteConnect()Z

    move-result v3

    if-nez v3, :cond_45

    .line 437
    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->reconnnectFromBonding(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_45

    .line 441
    :pswitch_50
    const/16 v3, 0xc

    if-ne v2, v3, :cond_58

    .line 445
    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->disconnectFromBonding(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_45

    .line 446
    :cond_58
    const/16 v3, 0xb

    if-ne v2, v3, :cond_60

    .line 447
    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bondingCanceled(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_45

    .line 449
    :cond_60
    sget-object v3, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled oldState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 432
    nop

    :pswitch_data_7a
    .packed-switch 0xa
        :pswitch_50
        :pswitch_45
        :pswitch_46
    .end packed-switch
.end method

.method private onPairingRequest(Landroid/bluetooth/BluetoothDevice;)V
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 407
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "onPairingRequest()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setPairingConfirmation"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "cancelPairingUserInput"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_3a} :catch_40
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_3a} :catch_45

    .line 419
    :goto_3a
    return-void

    .line 412
    :catch_3b
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3a

    .line 414
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_40
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_3a

    .line 416
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_45
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_3a
.end method

.method private reconnnectFromBonding(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 380
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "reconnnectFromBonding()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->retryConnect()V

    .line 382
    return-void
.end method

.method private releaseServices()V
    .registers 5

    .prologue
    .line 322
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/ble/Service;

    .line 323
    .local v0, "service":Lcom/nianticlabs/pokemongoplus/ble/Service;
    instance-of v3, v0, Lcom/nianticlabs/pokemongoplus/SfidaService;

    if-eqz v3, :cond_6

    move-object v1, v0

    .line 324
    check-cast v1, Lcom/nianticlabs/pokemongoplus/SfidaService;

    .line 325
    .local v1, "sfidaService":Lcom/nianticlabs/pokemongoplus/SfidaService;
    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/SfidaService;->onDestroy()V

    goto :goto_6

    .line 328
    .end local v0    # "service":Lcom/nianticlabs/pokemongoplus/ble/Service;
    .end local v1    # "sfidaService":Lcom/nianticlabs/pokemongoplus/SfidaService;
    :cond_1d
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 329
    return-void
.end method

.method private retryConnect()V
    .registers 6

    .prologue
    .line 272
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_c

    if-nez v0, :cond_18

    .line 275
    :cond_c
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "[BLE] BluetoothAdapter not initialized or unspecified address."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Disconnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    iput-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 291
    :goto_17
    return-void

    .line 281
    :cond_18
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_35

    .line 282
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "[BLE] Trying to use an existing bluetoothGatt for connection."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    goto :goto_17

    .line 288
    :cond_35
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->context:Landroid/content/Context;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 290
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "Trying to create a new connection."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private unpairDevice()V
    .registers 6

    .prologue
    .line 385
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v3, "unpairDevice()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :try_start_7
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "removeBond"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    .line 388
    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 389
    .local v1, "m":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1e} :catch_1f

    .line 393
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_1e
    return-void

    .line 390
    :catch_1f
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method


# virtual methods
.method public closeBluetoothGatt()V
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_5

    .line 319
    :goto_4
    return-void

    .line 317
    :cond_5
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_4
.end method

.method public connect()V
    .registers 2

    .prologue
    .line 219
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$3;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)V

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->connect(Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;)V

    .line 226
    return-void
.end method

.method public connect(Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->connectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    .line 296
    sget-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Connecting:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 297
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->retryConnect()V

    .line 298
    return-void
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 229
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$4;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$4;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)V

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->disconnect(Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;)V

    .line 243
    return-void
.end method

.method public disconnect(Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->disconnectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    .line 303
    sget-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Disconnecting:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 305
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_16

    .line 306
    :cond_e
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "[BLE] BluetoothAdapter not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_15
    return-void

    .line 310
    :cond_16
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_15
.end method

.method public discoverServices()V
    .registers 2

    .prologue
    .line 209
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$2;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)V

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->discoverServices(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V

    .line 217
    return-void
.end method

.method public discoverServices(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
    .registers 7
    .param p1, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    .line 189
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discoverServices("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-wide/16 v2, 0x12c

    :try_start_24
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_27} :catch_4c

    .line 197
    :goto_27
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_51

    .line 198
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->discoverServicesCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 199
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v1

    .line 200
    .local v1, "result":Z
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discoverSerivice:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v1    # "result":Z
    :goto_4b
    return-void

    .line 194
    :catch_4c
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_27

    .line 202
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_51
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v3, "gatt is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v2, 0x0

    sget-object v3, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->NotConnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {p1, v2, v3}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    goto :goto_4b
.end method

.method public getAdvertisingServiceDataLongValue(Ljava/lang/String;)J
    .registers 10
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 165
    monitor-enter p0

    .line 166
    :try_start_1
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->byteArrayFromHexString(Ljava/lang/String;)[B

    move-result-object v4

    .line 167
    .local v4, "uuidBytes":[B
    array-length v3, v4

    .line 169
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->scanRecord:[B

    array-length v5, v5

    sub-int/2addr v5, v3

    if-ge v1, v5, :cond_30

    .line 172
    const/4 v0, 0x1

    .line 173
    .local v0, "found":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_f
    if-ge v2, v3, :cond_1f

    .line 174
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->scanRecord:[B

    add-int v6, v1, v2

    aget-byte v5, v5, v6

    add-int/lit8 v6, v3, -0x1

    sub-int/2addr v6, v2

    aget-byte v6, v4, v6

    if-eq v5, v6, :cond_2a

    .line 175
    const/4 v0, 0x0

    .line 179
    :cond_1f
    if-eqz v0, :cond_2d

    .line 180
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->scanRecord:[B

    add-int v6, v1, v3

    aget-byte v5, v5, v6

    int-to-long v6, v5

    monitor-exit p0

    .line 183
    .end local v0    # "found":Z
    .end local v2    # "j":I
    :goto_29
    return-wide v6

    .line 173
    .restart local v0    # "found":Z
    .restart local v2    # "j":I
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 169
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 183
    .end local v0    # "found":Z
    .end local v2    # "j":I
    :cond_30
    const-wide/16 v6, 0x0

    monitor-exit p0

    goto :goto_29

    .line 184
    .end local v1    # "i":I
    .end local v3    # "length":I
    .end local v4    # "uuidBytes":[B
    :catchall_34
    move-exception v5

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_34

    throw v5
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getService(I)Lcom/nianticlabs/pokemongoplus/ble/Service;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->getServiceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_a

    .line 253
    const/4 v0, 0x0

    .line 255
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/ble/Service;

    goto :goto_9
.end method

.method public getService(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/ble/Service;
    .registers 6
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 259
    if-eqz p1, :cond_1b

    .line 260
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->getServiceCount()I

    move-result v0

    .line 261
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 262
    invoke-virtual {p0, v1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->getService(I)Lcom/nianticlabs/pokemongoplus/ble/Service;

    move-result-object v2

    .line 263
    .local v2, "service":Lcom/nianticlabs/pokemongoplus/ble/Service;
    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/ble/Service;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 268
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "service":Lcom/nianticlabs/pokemongoplus/ble/Service;
    :goto_17
    return-object v2

    .line 261
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "service":Lcom/nianticlabs/pokemongoplus/ble/Service;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 268
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "service":Lcom/nianticlabs/pokemongoplus/ble/Service;
    :cond_1b
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public getServiceCount()I
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    return-object v0
.end method

.method public getStateInt()I
    .registers 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->getState()Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->getInt()I

    move-result v0

    return v0
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 8
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    const/4 v0, 0x0

    .line 470
    packed-switch p3, :pswitch_data_d6

    .line 514
    :pswitch_4
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChange() UnhandledState status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "newState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_2c
    :goto_2c
    return-void

    .line 472
    :pswitch_2d
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "Connected with GATT server."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    if-nez p2, :cond_3e

    .line 474
    sget-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Connected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 475
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->tryCompleteConnect()Z

    goto :goto_2c

    .line 477
    :cond_3e
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->connectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    if-eqz v1, :cond_2c

    .line 478
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->connectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v1, v0, v2}, Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;->onConnectionStateChanged(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    goto :goto_2c

    .line 485
    :pswitch_4a
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected from GATT server., state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v3}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-static {p1}, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z

    .line 497
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->closeBluetoothGatt()V

    .line 498
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->releaseServices()V

    .line 499
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Connecting:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    if-eq v1, v2, :cond_7d

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Connected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    if-ne v1, v2, :cond_a3

    .line 500
    :cond_7d
    sget-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Connecting:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 501
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->retryConnect()V

    .line 502
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reconnecting., state now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 504
    :cond_a3
    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Disconnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    iput-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 505
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->disconnectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    if-eqz v1, :cond_b5

    .line 506
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->disconnectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    if-nez p2, :cond_b0

    const/4 v0, 0x1

    :cond_b0
    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v1, v0, v2}, Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;->onConnectionStateChanged(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 509
    :cond_b5
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected., state now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 470
    nop

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_4
        :pswitch_2d
    .end packed-switch
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, "bluetoothIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "context.registerReceiver(bluetoothReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 121
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v1, "context.unregisterReceiver(bluetoothReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->releaseServices()V

    .line 125
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 13
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 520
    packed-switch p2, :pswitch_data_ac

    .line 545
    sget-object v3, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Disconnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    iput-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 546
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->discoverServicesCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    if-eqz v3, :cond_14

    .line 547
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->discoverServicesCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    sget-object v4, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v3, v8, v4}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 549
    :cond_14
    sget-object v3, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BLE] onServicesDiscovered received error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_2c
    return-void

    .line 524
    :pswitch_2d
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    .line 525
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;

    monitor-enter v4

    .line 526
    :try_start_34
    sget-object v3, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onServicesDiscovered thread:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 528
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 529
    .local v0, "service":Landroid/bluetooth/BluetoothGattService;
    new-instance v2, Lcom/nianticlabs/pokemongoplus/SfidaService;

    invoke-direct {v2, v0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaService;-><init>(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGatt;)V

    .line 530
    .local v2, "sfidaService":Lcom/nianticlabs/pokemongoplus/SfidaService;
    invoke-direct {p0, v2}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->nativeDiscoverService(Lcom/nianticlabs/pokemongoplus/SfidaService;)V

    .line 531
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->serviceRef:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 533
    .end local v0    # "service":Landroid/bluetooth/BluetoothGattService;
    .end local v2    # "sfidaService":Lcom/nianticlabs/pokemongoplus/SfidaService;
    :catchall_77
    move-exception v3

    monitor-exit v4
    :try_end_79
    .catchall {:try_start_34 .. :try_end_79} :catchall_77

    throw v3

    :cond_7a
    :try_start_7a
    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_77

    .line 534
    sget-object v3, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Disconnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    iput-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    .line 535
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->discoverServicesCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    if-eqz v3, :cond_8b

    .line 536
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->discoverServicesCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    sget-object v4, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v3, v9, v4}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    goto :goto_2c

    .line 538
    :cond_8b
    sget-object v3, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v4, "onServicesDiscovered() no callback when discover %d service on device %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 539
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 538
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 520
    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_2d
    .end packed-switch
.end method

.method public setScanRecord([B)V
    .registers 3
    .param p1, "record"    # [B

    .prologue
    .line 158
    monitor-enter p0

    .line 159
    :try_start_1
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->scanRecord:[B

    .line 160
    monitor-exit p0

    .line 161
    return-void

    .line 160
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method tryCompleteConnect()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 459
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->state:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Connected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    if-ne v1, v2, :cond_1a

    .line 460
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->connectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    if-eqz v1, :cond_1a

    .line 461
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->TAG:Ljava/lang/String;

    const-string v2, "calling onConnectionStateChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->connectCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v1, v0, v2}, Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;->onConnectionStateChanged(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 466
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
