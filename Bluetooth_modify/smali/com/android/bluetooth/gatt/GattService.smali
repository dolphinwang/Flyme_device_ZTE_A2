.class public Lcom/android/bluetooth/gatt/GattService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "GattService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;,
        Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;,
        Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;,
        Lcom/android/bluetooth/gatt/GattService$ServerMap;,
        Lcom/android/bluetooth/gatt/GattService$ClientMap;
    }
.end annotation


# static fields
.field private static final ADVT_STATE_ONFOUND:I = 0x0

.field private static final ADVT_STATE_ONLOST:I = 0x1

.field private static final DBG:Z = true

.field private static final HID_UUIDS:[Ljava/util/UUID;

.field private static final MAC_ADDRESS_LENGTH:I = 0x6

.field static final SCAN_FILTER_ENABLED:I = 0x1

.field static final SCAN_FILTER_MODIFIED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BtGatt.GattService"

.field private static final TIME_STAMP_LENGTH:I = 0x2

.field private static final TRUNCATED_RESULT_SIZE:I = 0xb

.field private static final VDBG:Z = true


# instance fields
.field private mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

.field private mAdvertisingServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

.field mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

.field private mMaxScanFilters:I

.field private mOnFoundResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mReliableQueue:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

.field mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

.field mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

.field private mServiceDeclarations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/ServiceDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field private mStartContinueSearch:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/UUID;

    const/4 v1, 0x0

    const-string v2, "00002A4A-0000-1000-8000-00805F9B34FB"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "00002A4B-0000-1000-8000-00805F9B34FB"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "00002A4C-0000-1000-8000-00805F9B34FB"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "00002A4D-0000-1000-8000-00805F9B34FB"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/gatt/GattService;->HID_UUIDS:[Ljava/util/UUID;

    .line 205
    invoke-static {}, Lcom/android/bluetooth/gatt/GattService;->classInitNative()V

    .line 206
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 100
    new-instance v0, Lcom/android/bluetooth/gatt/SearchQueue;

    invoke-direct {v0}, Lcom/android/bluetooth/gatt/SearchQueue;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    .line 107
    new-instance v0, Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    .line 113
    new-instance v0, Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    .line 118
    new-instance v0, Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {v0}, Lcom/android/bluetooth/gatt/HandleMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mOnFoundResults:Ljava/util/Map;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    .line 128
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mStartContinueSearch:Ljava/lang/Boolean;

    .line 202
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    .line 319
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/ScanManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/GattService;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/gatt/GattService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/GattService;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private addDeclaration(I)Lcom/android/bluetooth/gatt/ServiceDeclaration;
    .locals 4
    .param p1, "serverIf"    # I

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    new-instance v2, Lcom/android/bluetooth/gatt/ServiceDeclaration;

    invoke-direct {v2, p1}, Lcom/android/bluetooth/gatt/ServiceDeclaration;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v0, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDeclaration: mServiceDeclarations="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private continueSearch(II)V
    .locals 22
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2169
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "continueSearch() - connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    if-nez p2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/gatt/SearchQueue;->isEmpty(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/gatt/SearchQueue;->popByConnId(I)Lcom/android/bluetooth/gatt/SearchQueue$Entry;

    move-result-object v21

    .line 2173
    .local v21, "svc":Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    if-nez v21, :cond_1

    .line 2174
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "continueSearch() - no entry of  connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    .end local v21    # "svc":Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    :cond_0
    :goto_0
    return-void

    .line 2177
    .restart local v21    # "svc":Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    :cond_1
    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charUuidLsb:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 2179
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->connId:I

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcType:I

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcInstId:I

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidLsb:J

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidMsb:J

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetCharacteristicNative(IIIJJIJJ)V

    goto :goto_0

    .line 2183
    :cond_2
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->connId:I

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcType:I

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcInstId:I

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidLsb:J

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidMsb:J

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charInstId:I

    move-object/from16 v0, v21

    iget-wide v11, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charUuidLsb:J

    move-object/from16 v0, v21

    iget-wide v13, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charUuidMsb:J

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v19}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetDescriptorNative(IIIJJIJJIJJ)V

    goto :goto_0

    .line 2188
    .end local v21    # "svc":Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v20

    .line 2189
    .local v20, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "continueSearch() - onSearchComplete app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    if-eqz v20, :cond_0

    .line 2191
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p2

    invoke-interface {v2, v3, v0}, Landroid/bluetooth/IBluetoothGattCallback;->onSearchComplete(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private continueServiceDeclaration(III)V
    .locals 19
    .param p1, "serverIf"    # I
    .param p2, "status"    # I
    .param p3, "srvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 2198
    const-string v4, "BtGatt.GattService"

    const-string v5, "continueServiceDeclaration() - mServiceDeclarations.size() == 0, return directly"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->resetContinueServiceDeclarationStart()V

    .line 2308
    :cond_0
    :goto_0
    return-void

    .line 2203
    :cond_1
    const-string v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "continueServiceDeclaration() - srvcHandle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",serverIf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    const/16 v16, 0x0

    .line 2207
    .local v16, "finished":Z
    const/4 v15, 0x0

    .line 2208
    .local v15, "entry":Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;
    if-nez p2, :cond_2

    .line 2209
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->getNext()Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;

    move-result-object v15

    .line 2211
    :cond_2
    if-eqz v15, :cond_6

    .line 2212
    const-string v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "continueServiceDeclaration() - next entry type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    iget-byte v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    packed-switch v4, :pswitch_data_0

    .line 2279
    :goto_1
    if-eqz v16, :cond_0

    .line 2280
    const-string v4, "BtGatt.GattService"

    const-string v5, "continueServiceDeclaration() - completed."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v14

    .line 2282
    .local v14, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v14, :cond_3

    .line 2283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v18

    .line 2285
    .local v18, "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    if-eqz v18, :cond_8

    .line 2286
    const-string v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "continueServiceDeclaration() - serviceEntry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    iget-object v4, v14, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v7, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v0, p2

    invoke-interface {v4, v0, v5, v6, v7}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServiceAdded(IIILandroid/os/ParcelUuid;)V

    .line 2295
    .end local v18    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :cond_3
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->removePendingDeclaration()V

    .line 2297
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 2298
    const-string v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "continueServiceDeclaration() - getPendingDeclaration()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mServerIf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v6

    iget v6, v6, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mServerIf:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    const-string v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "continueServiceDeclaration: begin a record serverIf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v6

    iget v6, v6, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mServerIf:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v4

    iget v4, v4, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mServerIf:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    goto/16 :goto_0

    .line 2216
    .end local v14    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    :pswitch_0
    const-string v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "continueServiceDeclaration() - gattServerAddServiceNative: serverIf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",uuid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",srvcHandle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    iget-boolean v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->advertisePreferred:Z

    if-eqz v4, :cond_4

    .line 2219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    iget-object v5, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2221
    :cond_4
    iget v6, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    iget v7, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    iget-object v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8

    iget-object v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v10

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->getNumHandles()I

    move-result v12

    move-object/from16 v4, p0

    move/from16 v5, p1

    invoke-direct/range {v4 .. v12}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddServiceNative(IIIJJI)V

    goto/16 :goto_1

    .line 2229
    :pswitch_1
    const-string v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "continueServiceDeclaration() - gattServerAddCharacteristicNative: serverIf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",uuid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",srvcHandle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    iget-object v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8

    iget-object v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v10

    iget v12, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->properties:I

    iget v13, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p3

    invoke-direct/range {v5 .. v13}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddCharacteristicNative(IIJJII)V

    goto/16 :goto_1

    .line 2238
    :pswitch_2
    const-string v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "continueServiceDeclaration() - gattServerAddDescriptorNative: serverIf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",uuid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",srvcHandle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    iget-object v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8

    iget-object v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v10

    iget v12, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p3

    invoke-direct/range {v5 .. v12}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddDescriptorNative(IIJJI)V

    goto/16 :goto_1

    .line 2248
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget-object v5, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    iget v6, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    iget v7, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/bluetooth/gatt/HandleMap;->getServiceHandle(Ljava/util/UUID;II)I

    move-result v17

    .line 2250
    .local v17, "inclSrvc":I
    if-eqz v17, :cond_5

    .line 2251
    const-string v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "continueServiceDeclaration() - gattServerAddIncludedServiceNative: serverIf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",uuid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",srvcHandle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddIncludedServiceNative(III)V

    goto/16 :goto_1

    .line 2256
    :cond_5
    const/16 v16, 0x1

    .line 2258
    goto/16 :goto_1

    .line 2263
    .end local v17    # "inclSrvc":I
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->isEndServiceDeclaration()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2264
    const-string v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "continueServiceDeclaration() - gattServerStartServiceNative serverIf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",srvcHandle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/bluetooth/gatt/GattService;->gattServerStartServiceNative(III)V

    .line 2267
    const/16 v16, 0x1

    .line 2268
    const-string v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "continueServiceDeclaration: end a record serverIf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->dump()V

    goto/16 :goto_1

    .line 2273
    :cond_7
    const-string v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "continueServiceDeclaration() - wait endServiceDeclaration, serverIf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->resetContinueServiceDeclarationStart()V

    goto/16 :goto_1

    .line 2290
    .restart local v14    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    .restart local v18    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :cond_8
    const-string v5, "BtGatt.GattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "continueServiceDeclaration() - serverIf="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",app.callback="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v14, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    iget-object v4, v14, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattServerCallback;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, p2

    invoke-interface {v4, v0, v5, v6, v7}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServiceAdded(IIILandroid/os/ParcelUuid;)V

    goto/16 :goto_2

    .line 2303
    .end local v18    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->resetContinueServiceDeclarationStart()V

    .line 2304
    const-string v4, "BtGatt.GattService"

    const-string v5, "continueServiceDeclaration() - getPendingDeclaration()== null, no more declaration!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->dump()V

    goto/16 :goto_0

    .line 2214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private deleteServices(I)V
    .locals 11
    .param p1, "serverIf"    # I

    .prologue
    .line 2329
    const-string v8, "BtGatt.GattService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteServices() - serverIf="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    const/4 v5, 0x0

    .line 2332
    .local v5, "handleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 2334
    .local v0, "bConcurrentModificationException":Z
    :cond_0
    const/4 v0, 0x0

    .line 2340
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2341
    .end local v5    # "handleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v6, "handleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_1
    iget-object v8, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v8}, Lcom/android/bluetooth/gatt/HandleMap;->getEntries()Ljava/util/List;

    move-result-object v2

    .line 2342
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/HandleMap$Entry;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 2343
    .local v3, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget v8, v3, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    iget v8, v3, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    if-ne v8, p1, :cond_1

    .line 2346
    iget v8, v3, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2348
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/HandleMap$Entry;>;"
    .end local v3    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    move-object v5, v6

    .line 2349
    .end local v6    # "handleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v1, "e":Ljava/util/ConcurrentModificationException;
    .restart local v5    # "handleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1
    const-string v8, "BtGatt.GattService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteServices: retry it!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 2352
    const/4 v0, 0x1

    .line 2354
    .end local v1    # "e":Ljava/util/ConcurrentModificationException;
    :goto_2
    if-nez v0, :cond_0

    .line 2357
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2358
    .local v4, "handle":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, p1, v8}, Lcom/android/bluetooth/gatt/GattService;->gattServerDeleteServiceNative(II)V

    .line 2359
    const-string v8, "BtGatt.GattService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteServices() - serverIf="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", handle="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v4    # "handle":Ljava/lang/Integer;
    .end local v5    # "handleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/HandleMap$Entry;>;"
    .restart local v6    # "handleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    move-object v5, v6

    .line 2353
    .end local v6    # "handleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "handleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_2

    .line 2361
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/HandleMap$Entry;>;"
    :cond_3
    return-void

    .line 2348
    .end local v7    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private deliverBatchScan(Lcom/android/bluetooth/gatt/ScanClient;Ljava/util/Set;)V
    .locals 6
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1076
    .local p2, "allResults":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/le/ScanResult;>;"
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    iget v5, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1077
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-nez v0, :cond_0

    .line 1089
    :goto_0
    return-void

    .line 1078
    :cond_0
    iget-object v4, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1079
    :cond_1
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetoothGattCallback;->onBatchScanResults(Ljava/util/List;)V

    .line 1082
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/ScanResult;

    .line 1084
    .local v3, "scanResult":Landroid/bluetooth/le/ScanResult;
    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/gatt/GattService;->matchesFilters(Lcom/android/bluetooth/gatt/ScanClient;Landroid/bluetooth/le/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1085
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1088
    .end local v3    # "scanResult":Landroid/bluetooth/le/ScanResult;
    :cond_4
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v4, v2}, Landroid/bluetooth/IBluetoothGattCallback;->onBatchScanResults(Ljava/util/List;)V

    goto :goto_0
.end method

.method private dump()V
    .locals 3

    .prologue
    .line 2397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2398
    .local v0, "sBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/GattService;->dump(Ljava/lang/StringBuilder;)V

    .line 2399
    const-string v1, "\n------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    const-string v1, "BtGatt.GattService"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    return-void
.end method

.method private enforceAdminPermission()V
    .locals 2

    .prologue
    .line 2141
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    return-void
.end method

.method private enforcePrivilegedPermission()V
    .locals 2

    .prologue
    .line 2164
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    return-void
.end method

.method private static extractBytes([BII)[B
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 1178
    new-array v0, p2, [B

    .line 1179
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1180
    return-object v0
.end method

.method private native gattClientConfigureMTUNative(II)V
.end method

.method private native gattClientConnectNative(ILjava/lang/String;ZI)V
.end method

.method private native gattClientDisconnectNative(ILjava/lang/String;I)V
.end method

.method private native gattClientExecuteWriteNative(IZ)V
.end method

.method private native gattClientGetCharacteristicNative(IIIJJIJJ)V
.end method

.method private native gattClientGetDescriptorNative(IIIJJIJJIJJ)V
.end method

.method private native gattClientGetDeviceTypeNative(Ljava/lang/String;)I
.end method

.method private native gattClientGetIncludedServiceNative(IIIJJIIJJ)V
.end method

.method private native gattClientReadCharacteristicNative(IIIJJIJJI)V
.end method

.method private native gattClientReadDescriptorNative(IIIJJIJJIJJI)V
.end method

.method private native gattClientReadRemoteRssiNative(ILjava/lang/String;)V
.end method

.method private native gattClientRefreshNative(ILjava/lang/String;)V
.end method

.method private native gattClientRegisterAppNative(JJ)V
.end method

.method private native gattClientRegisterForNotificationsNative(ILjava/lang/String;IIJJIJJZ)V
.end method

.method private native gattClientSearchServiceNative(IZJJ)V
.end method

.method private native gattClientUnregisterAppNative(I)V
.end method

.method private native gattClientWriteCharacteristicNative(IIIJJIJJII[B)V
.end method

.method private native gattClientWriteDescriptorNative(IIIJJIJJIJJII[B)V
.end method

.method private native gattConnectionParameterUpdateNative(ILjava/lang/String;IIII)V
.end method

.method private native gattServerAddCharacteristicNative(IIJJII)V
.end method

.method private native gattServerAddDescriptorNative(IIJJI)V
.end method

.method private native gattServerAddIncludedServiceNative(III)V
.end method

.method private native gattServerAddServiceNative(IIIJJI)V
.end method

.method private native gattServerConnectNative(ILjava/lang/String;ZI)V
.end method

.method private native gattServerDeleteServiceNative(II)V
.end method

.method private native gattServerDisconnectNative(ILjava/lang/String;I)V
.end method

.method private native gattServerRegisterAppNative(JJ)V
.end method

.method private native gattServerSendIndicationNative(III[B)V
.end method

.method private native gattServerSendNotificationNative(III[B)V
.end method

.method private native gattServerSendResponseNative(IIIIII[BI)V
.end method

.method private native gattServerStartServiceNative(III)V
.end method

.method private native gattServerStopServiceNative(II)V
.end method

.method private native gattServerUnregisterAppNative(I)V
.end method

.method private native gattTestNative(IJJLjava/lang/String;IIIII)V
.end method

.method private getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;
    .locals 3

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ServiceDeclaration;

    monitor-exit v1

    .line 143
    :goto_0
    return-object v0

    .line 142
    :cond_0
    monitor-exit v1

    .line 143
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getDeviceType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2134
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetDeviceTypeNative(Ljava/lang/String;)I

    move-result v0

    .line 2135
    .local v0, "type":I
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceType() - device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    return v0
.end method

.method private getLastestDeclaration(I)Lcom/android/bluetooth/gatt/ServiceDeclaration;
    .locals 7
    .param p1, "serverIf"    # I

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, "declaration":Lcom/android/bluetooth/gatt/ServiceDeclaration;
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v4

    .line 170
    :try_start_0
    const-string v3, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastestDeclaration: mServiceDeclarations.size()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 172
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/gatt/ServiceDeclaration;

    iget v3, v3, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mServerIf:I

    if-ne v3, p1, :cond_1

    .line 173
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-object v1, v0

    .line 174
    const-string v3, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastestDeclaration: found="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    monitor-exit v4

    .line 179
    return-object v1

    .line 171
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 178
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;
    .locals 3

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ServiceDeclaration;

    monitor-exit v1

    .line 151
    :goto_0
    return-object v0

    .line 150
    :cond_0
    monitor-exit v1

    .line 151
    const/4 v0, 0x0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native initializeNative()V
.end method

.method private isHidUuid(Ljava/util/UUID;)Z
    .locals 5
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 2127
    sget-object v0, Lcom/android/bluetooth/gatt/GattService;->HID_UUIDS:[Ljava/util/UUID;

    .local v0, "arr$":[Ljava/util/UUID;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 2128
    .local v1, "hid_uuid":Ljava/util/UUID;
    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 2130
    .end local v1    # "hid_uuid":Ljava/util/UUID;
    :goto_1
    return v4

    .line 2127
    .restart local v1    # "hid_uuid":Ljava/util/UUID;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2130
    .end local v1    # "hid_uuid":Ljava/util/UUID;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private matchesFilters(Lcom/android/bluetooth/gatt/ScanClient;Landroid/bluetooth/le/ScanResult;)Z
    .locals 4
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;
    .param p2, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    const/4 v2, 0x1

    .line 680
    iget-object v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 688
    :cond_0
    :goto_0
    return v2

    .line 683
    :cond_1
    iget-object v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanFilter;

    .line 684
    .local v0, "filter":Landroid/bluetooth/le/ScanFilter;
    invoke-virtual {v0, p2}, Landroid/bluetooth/le/ScanFilter;->matches(Landroid/bluetooth/le/ScanResult;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 688
    .end local v0    # "filter":Landroid/bluetooth/le/ScanFilter;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private needsPrivilegedPermissionForScan(Landroid/bluetooth/le/ScanSettings;)Z
    .locals 6
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2146
    if-nez p1, :cond_1

    .line 2158
    :cond_0
    :goto_0
    return v1

    .line 2150
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v2

    if-eq v2, v0, :cond_2

    move v1, v0

    .line 2151
    goto :goto_0

    .line 2154
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2158
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanResultType()I

    move-result v2

    if-ne v2, v0, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private parseBatchScanResults(II[B)Ljava/util/Set;
    .locals 4
    .param p1, "numRecords"    # I
    .param p2, "reportType"    # I
    .param p3, "batchRecord"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B)",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1093
    if-nez p1, :cond_0

    .line 1094
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 1100
    :goto_0
    return-object v0

    .line 1096
    :cond_0
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current time is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1098
    invoke-direct {p0, p1, p3}, Lcom/android/bluetooth/gatt/GattService;->parseTruncatedResults(I[B)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 1100
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/bluetooth/gatt/GattService;->parseFullResults(I[B)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method private parseFullResults(I[B)Ljava/util/Set;
    .locals 24
    .param p1, "numRecords"    # I
    .param p2, "batchRecord"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1130
    const-string v4, "BtGatt.GattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Batch record : "

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    new-instance v17, Ljava/util/HashSet;

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1132
    .local v17, "results":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/le/ScanResult;>;"
    const/4 v13, 0x0

    .line 1133
    .local v13, "position":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v14

    .line 1134
    .local v14, "now":J
    :goto_0
    move-object/from16 v0, p2

    array-length v4, v0

    if-ge v13, v4, :cond_0

    .line 1135
    const/4 v4, 0x6

    move-object/from16 v0, p2

    invoke-static {v0, v13, v4}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v10

    .line 1137
    .local v10, "address":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/bluetooth/gatt/GattService;->reverse([B)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v10}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .line 1139
    .local v5, "device":Landroid/bluetooth/BluetoothDevice;
    add-int/lit8 v13, v13, 0x6

    .line 1141
    add-int/lit8 v13, v13, 0x1

    .line 1143
    add-int/lit8 v13, v13, 0x1

    .line 1144
    add-int/lit8 v16, v13, 0x1

    .end local v13    # "position":I
    .local v16, "position":I
    aget-byte v7, p2, v13

    .line 1145
    .local v7, "rssi":I
    const/4 v4, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v1, v4}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/gatt/GattService;->parseTimestampNanos([B)J

    move-result-wide v22

    sub-long v8, v14, v22

    .line 1146
    .local v8, "timestampNanos":J
    add-int/lit8 v13, v16, 0x2

    .line 1149
    .end local v16    # "position":I
    .restart local v13    # "position":I
    add-int/lit8 v16, v13, 0x1

    .end local v13    # "position":I
    .restart local v16    # "position":I
    aget-byte v12, p2, v13

    .line 1150
    .local v12, "advertisePacketLen":I
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v1, v12}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v11

    .line 1151
    .local v11, "advertiseBytes":[B
    add-int v13, v16, v12

    .line 1152
    .end local v16    # "position":I
    .restart local v13    # "position":I
    add-int/lit8 v16, v13, 0x1

    .end local v13    # "position":I
    .restart local v16    # "position":I
    aget-byte v20, p2, v13

    .line 1153
    .local v20, "scanResponsePacketLen":I
    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v19

    .line 1154
    .local v19, "scanResponseBytes":[B
    add-int v13, v16, v20

    .line 1155
    .end local v16    # "position":I
    .restart local v13    # "position":I
    add-int v4, v12, v20

    new-array v0, v4, [B

    move-object/from16 v18, v0

    .line 1156
    .local v18, "scanRecord":[B
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-static {v11, v4, v0, v6, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1157
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v0, v4, v1, v12, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1159
    const-string v4, "BtGatt.GattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ScanRecord : "

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    new-instance v4, Landroid/bluetooth/le/ScanResult;

    invoke-static/range {v18 .. v18}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v6

    invoke-direct/range {v4 .. v9}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1163
    .end local v5    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "rssi":I
    .end local v8    # "timestampNanos":J
    .end local v10    # "address":[B
    .end local v11    # "advertiseBytes":[B
    .end local v12    # "advertisePacketLen":I
    .end local v18    # "scanRecord":[B
    .end local v19    # "scanResponseBytes":[B
    .end local v20    # "scanResponsePacketLen":I
    :cond_0
    return-object v17
.end method

.method private parseTruncatedResults(I[B)Ljava/util/Set;
    .locals 16
    .param p1, "numRecords"    # I
    .param p2, "batchRecord"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1105
    const-string v2, "BtGatt.GattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "batch record "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    new-instance v13, Ljava/util/HashSet;

    move/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1107
    .local v13, "results":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/le/ScanResult;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    .line 1108
    .local v10, "now":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, p1

    if-ge v9, v0, :cond_0

    .line 1109
    mul-int/lit8 v2, v9, 0xb

    const/16 v4, 0xb

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v12

    .line 1111
    .local v12, "record":[B
    const/4 v2, 0x0

    const/4 v4, 0x6

    invoke-static {v12, v2, v4}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v8

    .line 1112
    .local v8, "address":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/bluetooth/gatt/GattService;->reverse([B)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v8}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 1114
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    const/16 v2, 0x8

    aget-byte v5, v12, v2

    .line 1115
    .local v5, "rssi":I
    const/16 v2, 0x9

    const/4 v4, 0x2

    invoke-static {v12, v2, v4}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/gatt/GattService;->parseTimestampNanos([B)J

    move-result-wide v14

    sub-long v6, v10, v14

    .line 1116
    .local v6, "timestampNanos":J
    new-instance v2, Landroid/bluetooth/le/ScanResult;

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-static {v4}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v4

    invoke-direct/range {v2 .. v7}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V

    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1108
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1119
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "rssi":I
    .end local v6    # "timestampNanos":J
    .end local v8    # "address":[B
    .end local v12    # "record":[B
    :cond_0
    return-object v13
.end method

.method private parseUuids([B)Ljava/util/List;
    .locals 11
    .param p1, "adv_data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 2364
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2366
    .local v5, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    const/4 v1, 0x0

    .line 2367
    .local v1, "offset":I
    :goto_0
    array-length v6, p1

    add-int/lit8 v6, v6, -0x2

    if-ge v1, v6, :cond_0

    .line 2368
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    aget-byte v0, p1, v1

    .line 2369
    .local v0, "len":I
    if-nez v0, :cond_1

    move v1, v2

    .line 2392
    .end local v0    # "len":I
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_0
    return-object v5

    .line 2371
    .end local v1    # "offset":I
    .restart local v0    # "len":I
    .restart local v2    # "offset":I
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, v2

    .line 2372
    .local v3, "type":I
    packed-switch v3, :pswitch_data_0

    .line 2387
    add-int/lit8 v6, v0, -0x1

    add-int/2addr v1, v6

    goto :goto_0

    .line 2375
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :goto_1
    if-le v0, v10, :cond_2

    .line 2377
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v6, p1, v2

    and-int/lit16 v4, v6, 0xff

    .line 2378
    .local v4, "uuid16":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v6, p1, v1

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v4, v6

    .line 2380
    add-int/lit8 v0, v0, -0x2

    .line 2381
    const-string v6, "%08x-0000-1000-8000-00805f9b34fb"

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v4    # "uuid16":I
    :cond_2
    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_0

    :pswitch_0
    move v2, v1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_1

    .line 2372
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private removePendingDeclaration()V
    .locals 4

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    .line 156
    :try_start_0
    const-string v0, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mServiceDeclarations.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 158
    const-string v0, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mServiceDeclarations:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v0, "BtGatt.GattService"

    const-string v2, "mServiceDeclarations.remove(0)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 162
    :cond_0
    monitor-exit v1

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private resetContinueServiceDeclarationStart()V
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mStartContinueSearch:Ljava/lang/Boolean;

    monitor-enter v1

    .line 194
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mStartContinueSearch:Ljava/lang/Boolean;

    .line 195
    const-string v0, "BtGatt.GattService"

    const-string v2, "resetContinueServiceDeclarationStart"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    monitor-exit v1

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reverse([B)V
    .locals 4
    .param p1, "address"    # [B

    .prologue
    .line 1168
    array-length v2, p1

    .line 1169
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    div-int/lit8 v3, v2, 0x2

    if-ge v1, v3, :cond_0

    .line 1170
    aget-byte v0, p1, v1

    .line 1171
    .local v0, "b":B
    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v3, v1

    aget-byte v3, p1, v3

    aput-byte v3, p1, v1

    .line 1172
    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v3, v1

    aput-byte v0, p1, v3

    .line 1169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1174
    .end local v0    # "b":B
    :cond_0
    return-void
.end method

.method private stopNextService(II)V
    .locals 6
    .param p1, "serverIf"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2311
    const-string v3, "BtGatt.GattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopNextService() - serverIf="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    if-nez p2, :cond_1

    .line 2315
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v3}, Lcom/android/bluetooth/gatt/HandleMap;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 2316
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/HandleMap$Entry;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 2317
    .local v1, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    if-ne v3, p1, :cond_0

    iget-boolean v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    if-eqz v3, :cond_0

    .line 2322
    iget v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/gatt/GattService;->gattServerStopServiceNative(II)V

    .line 2326
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/HandleMap$Entry;>;"
    .end local v1    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private testContinueServiceDeclarationStartAndSet()Z
    .locals 4

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "bStart":Z
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mStartContinueSearch:Ljava/lang/Boolean;

    monitor-enter v2

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mStartContinueSearch:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 186
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mStartContinueSearch:Ljava/lang/Boolean;

    .line 187
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testContinueServiceDeclarationStartAndSet: bStart="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return v0

    .line 187
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method addCharacteristic(ILjava/util/UUID;II)V
    .locals 3
    .param p1, "serverIf"    # I
    .param p2, "charUuid"    # Ljava/util/UUID;
    .param p3, "properties"    # I
    .param p4, "permissions"    # I

    .prologue
    .line 2008
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCharacteristic() - uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mServerIf:I

    if-eq p1, v0, :cond_0

    .line 2012
    const-string v0, "BtGatt.GattService"

    const-string v1, "addCharacteristic() - getLastestDeclaration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->getLastestDeclaration(I)Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addCharacteristic(Ljava/util/UUID;II)V

    .line 2018
    :goto_0
    return-void

    .line 2016
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addCharacteristic(Ljava/util/UUID;II)V

    goto :goto_0
.end method

.method addDescriptor(ILjava/util/UUID;I)V
    .locals 3
    .param p1, "serverIf"    # I
    .param p2, "descUuid"    # Ljava/util/UUID;
    .param p3, "permissions"    # I

    .prologue
    .line 2021
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDescriptor() - uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mServerIf:I

    if-eq p1, v0, :cond_0

    .line 2025
    const-string v0, "BtGatt.GattService"

    const-string v1, "addDescriptor() - getLastestDeclaration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->getLastestDeclaration(I)Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addDescriptor(Ljava/util/UUID;I)V

    .line 2031
    :goto_0
    return-void

    .line 2029
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addDescriptor(Ljava/util/UUID;I)V

    goto :goto_0
.end method

.method addIncludedService(IIILjava/util/UUID;)V
    .locals 3
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "srvcUuid"    # Ljava/util/UUID;

    .prologue
    .line 1994
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIncludedService() - uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mServerIf:I

    if-eq p1, v0, :cond_0

    .line 1998
    const-string v0, "BtGatt.GattService"

    const-string v1, "addIncludedService() - getLastestDeclaration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->getLastestDeclaration(I)Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p4, p2, p3}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addIncludedService(Ljava/util/UUID;II)V

    .line 2004
    :goto_0
    return-void

    .line 2002
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p4, p2, p3}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addIncludedService(Ljava/util/UUID;II)V

    goto :goto_0
.end method

.method beginReliableWrite(ILjava/lang/String;)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 1590
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginReliableWrite() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1594
    return-void
.end method

.method beginServiceDeclaration(IIIILjava/util/UUID;Z)V
    .locals 6
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "minHandles"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "advertisePreferred"    # Z

    .prologue
    .line 1983
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginServiceDeclaration() - uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->addDeclaration(I)Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    .local v0, "serviceDeclaration":Lcom/android/bluetooth/gatt/ServiceDeclaration;
    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    .line 1988
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addService(Ljava/util/UUID;IIIZ)V

    .line 1990
    return-void
.end method

.method protected cleanup()Z
    .locals 2

    .prologue
    .line 242
    const-string v0, "BtGatt.GattService"

    const-string v1, "cleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->cleanupNative()V

    .line 244
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->cleanup()V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager;->cleanup()V

    .line 246
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method clearServices(I)V
    .locals 2
    .param p1, "serverIf"    # I

    .prologue
    .line 2075
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    const-string v0, "BtGatt.GattService"

    const-string v1, "clearServices()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->deleteServices(I)V

    .line 2079
    return-void
.end method

.method clientConnect(ILjava/lang/String;ZI)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z
    .param p4, "transport"    # I

    .prologue
    .line 1422
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientConnect() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isDirect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->gattClientConnectNative(ILjava/lang/String;ZI)V

    .line 1426
    return-void
.end method

.method clientDisconnect(ILjava/lang/String;)V
    .locals 4
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 1429
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1432
    .local v0, "connId":Ljava/lang/Integer;
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clientDisconnect() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/bluetooth/gatt/GattService;->gattClientDisconnectNative(ILjava/lang/String;I)V

    .line 1435
    return-void

    .line 1434
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method configureMTU(ILjava/lang/String;I)V
    .locals 4
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "mtu"    # I

    .prologue
    .line 1636
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configureMTU() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mtu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1640
    .local v0, "connId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1641
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p3}, Lcom/android/bluetooth/gatt/GattService;->gattClientConfigureMTUNative(II)V

    .line 1645
    :goto_0
    return-void

    .line 1643
    :cond_0
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configureMTU() - No connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method connectionParameterUpdate(ILjava/lang/String;I)V
    .locals 7
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "connectionPriority"    # I

    .prologue
    .line 1648
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    const/16 v3, 0x18

    .line 1652
    .local v3, "minInterval":I
    const/16 v4, 0x28

    .line 1655
    .local v4, "maxInterval":I
    const/4 v5, 0x0

    .line 1658
    .local v5, "latency":I
    const/16 v6, 0x7d0

    .line 1660
    .local v6, "timeout":I
    packed-switch p3, :pswitch_data_0

    .line 1674
    :goto_0
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionParameterUpdate() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 1676
    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->gattConnectionParameterUpdateNative(ILjava/lang/String;IIII)V

    .line 1678
    return-void

    .line 1663
    :pswitch_0
    const/4 v3, 0x6

    .line 1664
    const/16 v4, 0x8

    .line 1665
    goto :goto_0

    .line 1668
    :pswitch_1
    const/16 v3, 0x50

    .line 1669
    const/16 v4, 0x64

    .line 1670
    const/4 v5, 0x2

    goto :goto_0

    .line 1660
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method discoverServices(ILjava/lang/String;)V
    .locals 8
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 1488
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1491
    .local v0, "connId":Ljava/lang/Integer;
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "discoverServices() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    if-eqz v0, :cond_0

    .line 1494
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/gatt/GattService;->gattClientSearchServiceNative(IZJJ)V

    .line 1497
    :goto_0
    return-void

    .line 1496
    :cond_0
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "discoverServices() - No connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2406
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 2407
    const-string v4, "mAdvertisingServiceUuids:"

    invoke-static {p1, v4}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2408
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    .line 2409
    .local v3, "uuid":Ljava/util/UUID;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 2411
    .end local v3    # "uuid":Ljava/util/UUID;
    :cond_0
    const-string v4, "mOnFoundResults:"

    invoke-static {p1, v4}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2412
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mOnFoundResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/ScanResult;

    .line 2413
    .local v2, "result":Landroid/bluetooth/le/ScanResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 2415
    .end local v2    # "result":Landroid/bluetooth/le/ScanResult;
    :cond_1
    const-string v4, "mOnFoundResults:"

    invoke-static {p1, v4}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2416
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ServiceDeclaration;

    .line 2417
    .local v0, "declaration":Lcom/android/bluetooth/gatt/ServiceDeclaration;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    .line 2419
    .end local v0    # "declaration":Lcom/android/bluetooth/gatt/ServiceDeclaration;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMaxScanFilters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/gatt/GattService;->mMaxScanFilters:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2421
    const-string v4, "\nGATT Client Map\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2422
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->dump(Ljava/lang/StringBuilder;)V

    .line 2424
    const-string v4, "\nGATT Server Map\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2425
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->dump(Ljava/lang/StringBuilder;)V

    .line 2427
    const-string v4, "\nGATT Handle Map\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2428
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/gatt/HandleMap;->dump(Ljava/lang/StringBuilder;)V

    .line 2429
    return-void
.end method

.method endReliableWrite(ILjava/lang/String;Z)V
    .locals 4
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "execute"    # Z

    .prologue
    .line 1597
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endReliableWrite() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " execute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1603
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1604
    .local v0, "connId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p3}, Lcom/android/bluetooth/gatt/GattService;->gattClientExecuteWriteNative(IZ)V

    .line 1605
    :cond_0
    return-void
.end method

.method endServiceDeclaration(I)V
    .locals 4
    .param p1, "serverIf"    # I

    .prologue
    .line 2034
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endServiceDeclaration() - serverIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getActiveDeclaration().mServerIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v3

    iget v3, v3, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mServerIf:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v1

    iget v1, v1, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mServerIf:I

    if-eq p1, v1, :cond_2

    .line 2041
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->getLastestDeclaration(I)Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->endServiceDeclaration()V

    .line 2047
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->testContinueServiceDeclarationStartAndSet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2049
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v1

    iget v1, v1, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mServerIf:I

    if-eq p1, v1, :cond_0

    .line 2050
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v1

    iget p1, v1, Lcom/android/bluetooth/gatt/ServiceDeclaration;->mServerIf:I

    .line 2051
    const-string v1, "BtGatt.GattService"

    const-string v2, "endServiceDeclaration(): serverIf != getPendingDeclaration().mServerIf"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    :cond_0
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endServiceDeclaration: begin a record serverIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2061
    :cond_1
    :goto_1
    return-void

    .line 2043
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->endServiceDeclaration()V

    goto :goto_0

    .line 2055
    :catch_0
    move-exception v0

    .line 2056
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->resetContinueServiceDeclarationStart()V

    .line 2057
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method flushPendingBatchResults(IZ)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "isServer"    # Z

    .prologue
    .line 1387
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flushPendingBatchResults - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isServer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v1, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-direct {v1, p1, p2}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->flushBatchScanResults(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 1390
    return-void
.end method

.method gattTestCommand(ILjava/util/UUID;Ljava/lang/String;IIIII)V
    .locals 12
    .param p1, "command"    # I
    .param p2, "uuid1"    # Ljava/util/UUID;
    .param p3, "bda1"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "p4"    # I
    .param p8, "p5"    # I

    .prologue
    .line 2437
    if-nez p3, :cond_0

    const-string p3, "00:00:00:00:00:00"

    .line 2438
    :cond_0
    if-eqz p2, :cond_1

    .line 2439
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/bluetooth/gatt/GattService;->gattTestNative(IJJLjava/lang/String;IIIII)V

    .line 2443
    :goto_0
    return-void

    .line 2442
    :cond_1
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/bluetooth/gatt/GattService;->gattTestNative(IJJLjava/lang/String;IIIII)V

    goto :goto_0
.end method

.method getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1471
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1474
    .local v0, "connectedDevAddress":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1475
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1476
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1477
    .local v1, "connectedDeviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v1
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 17
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1321
    const-string v14, "android.permission.BLUETOOTH"

    const-string v15, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    const/4 v1, 0x1

    .line 1325
    .local v1, "DEVICE_TYPE_BREDR":I
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1330
    .local v8, "deviceStates":Ljava/util/Map;, "Ljava/util/Map<Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/gatt/GattService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v4

    .line 1331
    .local v4, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 1332
    .local v6, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/bluetooth/gatt/GattService;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    .line 1333
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1339
    .end local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1340
    .local v5, "connectedDevices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v14, "BtGatt.GattService"

    const-string v15, "getDevicesMatchingConnectionStates: mClientMap"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v14}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1342
    const-string v14, "BtGatt.GattService"

    const-string v15, "getDevicesMatchingConnectionStates: mServerMap"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v14}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1345
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1346
    .local v2, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/gatt/GattService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v14, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 1347
    .restart local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v6, :cond_2

    .line 1348
    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1354
    .end local v2    # "address":Ljava/lang/String;
    .end local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1356
    .local v7, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1357
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;>;"
    move-object/from16 v3, p1

    .local v3, "arr$":[I
    array-length v12, v3

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_2
    if-ge v11, v12, :cond_4

    aget v13, v3, v11

    .line 1358
    .local v13, "state":I
    const-string v14, "BtGatt.GattService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getDevicesMatchingConnectionStates: address="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",state="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v13, :cond_5

    .line 1360
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1357
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1365
    .end local v3    # "arr$":[I
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;>;"
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "state":I
    :cond_6
    return-object v7
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const-string v0, "BtGatt.GattService"

    return-object v0
.end method

.method declared-synchronized getRegisteredServiceUuids()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1462
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    .line 1463
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1464
    .local v2, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget-object v3, v3, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 1465
    .local v0, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    new-instance v3, Landroid/os/ParcelUuid;

    iget-object v4, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v3, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1462
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1467
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :cond_0
    monitor-exit p0

    return-object v2
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    return-object v0
.end method

.method onAdvertiseCallback(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    .line 1250
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdvertiseCallback,- clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->callbackDone(II)V

    .line 1252
    return-void
.end method

.method onAdvertiseDataSet(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    .line 1275
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdvertiseDataSet() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->callbackDone(II)V

    .line 1278
    return-void
.end method

.method onAdvertiseDataUpdated(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "client_if"    # I

    .prologue
    .line 1269
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdvertiseDataUpdated() - client_if="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    return-void
.end method

.method onAdvertiseInstanceDisabled(II)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1282
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAdvertiseInstanceDisabled() - clientIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1285
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_0

    .line 1286
    const-string v2, "BtGatt.GattService"

    const-string v3, "Client app is not null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    const/4 v1, 0x0

    .line 1288
    .local v1, "isStart":Z
    if-nez p1, :cond_1

    .line 1289
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1, v5}, Landroid/bluetooth/IBluetoothGattCallback;->onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V

    .line 1296
    .end local v1    # "isStart":Z
    :cond_0
    :goto_0
    return-void

    .line 1292
    .restart local v1    # "isStart":Z
    :cond_1
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    const/4 v3, 0x4

    invoke-interface {v2, v3, v1, v5}, Landroid/bluetooth/IBluetoothGattCallback;->onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V

    goto :goto_0
.end method

.method onAdvertiseInstanceEnabled(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    .line 1262
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdvertiseInstanceEnabled() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->callbackDone(II)V

    .line 1265
    return-void
.end method

.method onAttributeRead(Ljava/lang/String;IIIIZ)V
    .locals 17
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "connId"    # I
    .param p3, "transId"    # I
    .param p4, "attrHandle"    # I
    .param p5, "offset"    # I
    .param p6, "isLong"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1786
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAttributeRead() connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v15

    .line 1791
    .local v15, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    if-nez v15, :cond_1

    .line 1825
    :cond_0
    :goto_0
    return-void

    .line 1793
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/HandleMap;->addRequest(II)V

    .line 1795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v13

    .line 1796
    .local v13, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v13, :cond_0

    .line 1798
    iget v2, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    packed-switch v2, :pswitch_data_0

    .line 1822
    const-string v2, "BtGatt.GattService"

    const-string v3, "onAttributeRead() - Requested unknown attribute type."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1801
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v16

    .line 1802
    .local v16, "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget-object v2, v13, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v9, Landroid/os/ParcelUuid;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v9, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget v10, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v11, Landroid/os/ParcelUuid;

    iget-object v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v2 .. v11}, Landroid/bluetooth/IBluetoothGattServerCallback;->onCharacteristicReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    goto :goto_0

    .line 1811
    .end local v16    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v16

    .line 1812
    .restart local v16    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v14

    .line 1813
    .local v14, "charEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget-object v2, v13, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v9, Landroid/os/ParcelUuid;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v9, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget v10, v14, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v11, Landroid/os/ParcelUuid;

    iget-object v3, v14, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v12, Landroid/os/ParcelUuid;

    iget-object v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v12, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v2 .. v12}, Landroid/bluetooth/IBluetoothGattServerCallback;->onDescriptorReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V

    goto/16 :goto_0

    .line 1798
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onAttributeWrite(Ljava/lang/String;IIIIIZZ[B)V
    .locals 20
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "connId"    # I
    .param p3, "transId"    # I
    .param p4, "attrHandle"    # I
    .param p5, "offset"    # I
    .param p6, "length"    # I
    .param p7, "needRsp"    # Z
    .param p8, "isPrep"    # Z
    .param p9, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1832
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAttributeWrite() connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isPrep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v18

    .line 1838
    .local v18, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    if-nez v18, :cond_1

    .line 1874
    :cond_0
    :goto_0
    return-void

    .line 1840
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/HandleMap;->addRequest(II)V

    .line 1842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v16

    .line 1843
    .local v16, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v16, :cond_0

    .line 1845
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    packed-switch v2, :pswitch_data_0

    .line 1871
    const-string v2, "BtGatt.GattService"

    const-string v3, "onAttributeWrite() - Requested unknown attribute type."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1848
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v19

    .line 1849
    .local v19, "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v11, Landroid/os/ParcelUuid;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v13, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v13, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p7

    move-object/from16 v14, p9

    invoke-interface/range {v2 .. v14}, Landroid/bluetooth/IBluetoothGattServerCallback;->onCharacteristicWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    goto :goto_0

    .line 1859
    .end local v19    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v19

    .line 1860
    .restart local v19    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v17

    .line 1861
    .local v17, "charEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v11, Landroid/os/ParcelUuid;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v13, Landroid/os/ParcelUuid;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v13, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v14, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v14, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p7

    move-object/from16 v15, p9

    invoke-interface/range {v2 .. v15}, Landroid/bluetooth/IBluetoothGattServerCallback;->onDescriptorWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V

    goto/16 :goto_0

    .line 1845
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onBatchScanReports(IIII[B)V
    .locals 7
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .param p3, "reportType"    # I
    .param p4, "numRecords"    # I
    .param p5, "recordData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1055
    const-string v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onBatchScanReports() - clientIf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reportType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", numRecords="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v4, p2, p1}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    .line 1059
    invoke-direct {p0, p4, p3, p5}, Lcom/android/bluetooth/gatt/GattService;->parseBatchScanResults(II[B)Ljava/util/Set;

    move-result-object v3

    .line 1060
    .local v3, "results":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/le/ScanResult;>;"
    const/4 v4, 0x1

    if-ne p3, v4, :cond_2

    .line 1062
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v4, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1063
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-nez v0, :cond_1

    .line 1071
    .end local v0    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :cond_0
    :goto_0
    return-void

    .line 1064
    .restart local v0    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :cond_1
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetoothGattCallback;->onBatchScanResults(Ljava/util/List;)V

    goto :goto_0

    .line 1066
    .end local v0    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/ScanManager;->getFullBatchScanQueue()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ScanClient;

    .line 1068
    .local v1, "client":Lcom/android/bluetooth/gatt/ScanClient;
    invoke-direct {p0, v1, v3}, Lcom/android/bluetooth/gatt/GattService;->deliverBatchScan(Lcom/android/bluetooth/gatt/ScanClient;Ljava/util/Set;)V

    goto :goto_1
.end method

.method onBatchScanStartStopped(III)V
    .locals 3
    .param p1, "startStopAction"    # I
    .param p2, "status"    # I
    .param p3, "clientIf"    # I

    .prologue
    .line 1046
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBatchScanStartStopped() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startStopAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0, p3, p2}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    .line 1050
    return-void
.end method

.method onBatchScanStorageConfigured(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    .line 1038
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBatchScanStorageConfigured() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    .line 1041
    return-void
.end method

.method onBatchScanThresholdCrossed(I)V
    .locals 4
    .param p1, "clientIf"    # I

    .prologue
    .line 1185
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBatchScanThresholdCrossed() - clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const/4 v0, 0x0

    .line 1188
    .local v0, "isServer":Z
    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/gatt/GattService;->flushPendingBatchResults(IZ)V

    .line 1189
    return-void
.end method

.method onCharacteristicAdded(IIJJII)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "charUuidLsb"    # J
    .param p5, "charUuidMsb"    # J
    .param p7, "srvcHandle"    # I
    .param p8, "charHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1722
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .line 1723
    .local v0, "uuid":Ljava/util/UUID;
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCharacteristicAdded() UUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", srvcHandle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", charHandle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    if-nez p1, :cond_0

    .line 1726
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v1, p2, p8, v0, p7}, Lcom/android/bluetooth/gatt/HandleMap;->addCharacteristic(IILjava/util/UUID;I)V

    .line 1727
    :cond_0
    invoke-direct {p0, p2, p1, p7}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    .line 1728
    return-void
.end method

.method onClientCongestion(IZ)V
    .locals 11
    .param p1, "connId"    # I
    .param p2, "congested"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1299
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClientCongestion() - connId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", congested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v8

    .line 1303
    .local v8, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v8, :cond_0

    .line 1304
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v8, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    .line 1305
    :goto_0
    iget-object v0, v8, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1306
    invoke-virtual {v8}, Lcom/android/bluetooth/gatt/ContextMap$App;->popQueuedCallback()Lcom/android/bluetooth/gatt/CallbackInfo;

    move-result-object v9

    .line 1307
    .local v9, "callbackInfo":Lcom/android/bluetooth/gatt/CallbackInfo;
    if-nez v9, :cond_1

    .line 1314
    .end local v9    # "callbackInfo":Lcom/android/bluetooth/gatt/CallbackInfo;
    :cond_0
    return-void

    .line 1308
    .restart local v9    # "callbackInfo":Lcom/android/bluetooth/gatt/CallbackInfo;
    :cond_1
    iget-object v0, v8, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    iget-object v1, v9, Lcom/android/bluetooth/gatt/CallbackInfo;->address:Ljava/lang/String;

    iget v2, v9, Lcom/android/bluetooth/gatt/CallbackInfo;->status:I

    iget v3, v9, Lcom/android/bluetooth/gatt/CallbackInfo;->srvcType:I

    iget v4, v9, Lcom/android/bluetooth/gatt/CallbackInfo;->srvcInstId:I

    new-instance v5, Landroid/os/ParcelUuid;

    iget-object v6, v9, Lcom/android/bluetooth/gatt/CallbackInfo;->srvcUuid:Ljava/util/UUID;

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget v6, v9, Lcom/android/bluetooth/gatt/CallbackInfo;->charInstId:I

    new-instance v7, Landroid/os/ParcelUuid;

    iget-object v10, v9, Lcom/android/bluetooth/gatt/CallbackInfo;->charUuid:Ljava/util/UUID;

    invoke-direct {v7, v10}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface/range {v0 .. v7}, Landroid/bluetooth/IBluetoothGattCallback;->onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    goto :goto_0
.end method

.method onClientConnected(Ljava/lang/String;ZII)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "connected"    # Z
    .param p3, "connId"    # I
    .param p4, "serverIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1768
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnected() connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", serverIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p4}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1772
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-nez v0, :cond_0

    .line 1781
    :goto_0
    return-void

    .line 1774
    :cond_0
    if-eqz p2, :cond_1

    .line 1775
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p4, p3, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->addConnection(IILjava/lang/String;)V

    .line 1780
    :goto_1
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattServerCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p4, p2, p1}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServerConnectionState(IIZLjava/lang/String;)V

    goto :goto_0

    .line 1777
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p4, p3}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->removeConnection(II)V

    goto :goto_1
.end method

.method onClientRegistered(IIJJ)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .param p3, "uuidLsb"    # J
    .param p5, "uuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 693
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .line 694
    .local v1, "uuid":Ljava/util/UUID;
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClientRegistered() - UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByUuid(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 696
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_0

    .line 697
    if-nez p1, :cond_1

    .line 698
    iput p2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    .line 699
    new-instance v2, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;

    invoke-direct {v2, p0, p2}, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;-><init>(Lcom/android/bluetooth/gatt/GattService;I)V

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/gatt/ContextMap$App;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 703
    :goto_0
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onClientRegistered(II)V

    .line 705
    :cond_0
    return-void

    .line 701
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->remove(Ljava/util/UUID;)V

    goto :goto_0
.end method

.method onConfigureMTU(III)V
    .locals 5
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "mtu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1237
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .line 1239
    .local v0, "address":Ljava/lang/String;
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigureMTU() address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mtu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    .line 1243
    .local v1, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v1, :cond_0

    .line 1244
    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, v0, p3, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onConfigureMTU(Ljava/lang/String;II)V

    .line 1246
    :cond_0
    return-void
.end method

.method onConnected(IIILjava/lang/String;)V
    .locals 4
    .param p1, "clientIf"    # I
    .param p2, "connId"    # I
    .param p3, "status"    # I
    .param p4, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 709
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnected() - clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2, p4}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addConnection(IILjava/lang/String;)V

    .line 713
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 714
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_1

    .line 715
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    if-nez p3, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1, p3, p1, v2, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onClientConnectionState(IIZLjava/lang/String;)V

    .line 718
    :cond_1
    return-void

    .line 715
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method onDescriptorAdded(IIJJII)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "descrUuidLsb"    # J
    .param p5, "descrUuidMsb"    # J
    .param p7, "srvcHandle"    # I
    .param p8, "descrHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1734
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .line 1735
    .local v0, "uuid":Ljava/util/UUID;
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDescriptorAdded() UUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", srvcHandle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", descrHandle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    if-nez p1, :cond_0

    .line 1738
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v1, p2, p8, v0, p7}, Lcom/android/bluetooth/gatt/HandleMap;->addDescriptor(IILjava/util/UUID;I)V

    .line 1739
    :cond_0
    invoke-direct {p0, p2, p1, p7}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    .line 1740
    return-void
.end method

.method onDisconnected(IIILjava/lang/String;)V
    .locals 4
    .param p1, "clientIf"    # I
    .param p2, "connId"    # I
    .param p3, "status"    # I
    .param p4, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 722
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnected() - clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->removeConnection(II)V

    .line 726
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/gatt/SearchQueue;->removeConnId(I)V

    .line 727
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 728
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_0

    .line 729
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    const/4 v2, 0x0

    invoke-interface {v1, p3, p1, v2, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onClientConnectionState(IIZLjava/lang/String;)V

    .line 731
    :cond_0
    return-void
.end method

.method onExecuteCompleted(II)V
    .locals 5
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 942
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .line 943
    .local v0, "address":Ljava/lang/String;
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onExecuteCompleted() - address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    .line 947
    .local v1, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v1, :cond_0

    .line 948
    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, v0, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onExecuteWrite(Ljava/lang/String;I)V

    .line 950
    :cond_0
    return-void
.end method

.method onExecuteWrite(Ljava/lang/String;III)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "connId"    # I
    .param p3, "transId"    # I
    .param p4, "execWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1878
    const-string v1, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onExecuteWrite() connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", transId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1882
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-nez v0, :cond_0

    .line 1885
    :goto_0
    return-void

    .line 1884
    :cond_0
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattServerCallback;

    if-ne p4, v2, :cond_1

    :goto_1
    invoke-interface {v1, p1, p3, v2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onExecuteWrite(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method onGetCharacteristic(IIIIJJIJJI)V
    .locals 25
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "charProp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 761
    new-instance v23, Ljava/util/UUID;

    move-object/from16 v0, v23

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 762
    .local v23, "srvcUuid":Ljava/util/UUID;
    new-instance v22, Ljava/util/UUID;

    move-object/from16 v0, v22

    move-wide/from16 v1, p12

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 763
    .local v22, "charUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v20

    .line 765
    .local v20, "address":Ljava/lang/String;
    const-string v6, "BtGatt.GattService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onGetCharacteristic() - address="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", charUuid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", prop="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p14

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", connId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    if-nez p2, :cond_1

    .line 769
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move/from16 v14, p9

    move-wide/from16 v15, p10

    move-wide/from16 v17, p12

    invoke-virtual/range {v6 .. v18}, Lcom/android/bluetooth/gatt/SearchQueue;->add(IIIJJIJJ)V

    .line 773
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v21

    .line 774
    .local v21, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v21, :cond_0

    .line 775
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v10, Landroid/os/ParcelUuid;

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v12, Landroid/os/ParcelUuid;

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v7, v20

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v11, p9

    move/from16 v13, p14

    invoke-interface/range {v6 .. v13}, Landroid/bluetooth/IBluetoothGattCallback;->onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    :cond_0
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move/from16 v14, p9

    move-wide/from16 v15, p10

    move-wide/from16 v17, p12

    .line 781
    invoke-direct/range {v6 .. v18}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetCharacteristicNative(IIIJJIJJ)V

    .line 790
    .end local v21    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :goto_0
    return-void

    .line 786
    :cond_1
    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    invoke-direct/range {v6 .. v19}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetIncludedServiceNative(IIIJJIIJJ)V

    goto :goto_0
.end method

.method onGetDescriptor(IIIIJJIJJIJJ)V
    .locals 31
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "descrInstId"    # I
    .param p15, "descrUuidLsb"    # J
    .param p17, "descrUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 797
    new-instance v29, Ljava/util/UUID;

    move-object/from16 v0, v29

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 798
    .local v29, "srvcUuid":Ljava/util/UUID;
    new-instance v27, Ljava/util/UUID;

    move-object/from16 v0, v27

    move-wide/from16 v1, p12

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 799
    .local v27, "charUuid":Ljava/util/UUID;
    new-instance v28, Ljava/util/UUID;

    move-object/from16 v0, v28

    move-wide/from16 v1, p17

    move-wide/from16 v3, p15

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 800
    .local v28, "descUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v7

    .line 802
    .local v7, "address":Ljava/lang/String;
    const-string v6, "BtGatt.GattService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onGetDescriptor() - address="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", status="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", descUuid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", connId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    if-nez p2, :cond_1

    .line 806
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v26

    .line 807
    .local v26, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v26, :cond_0

    .line 808
    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v10, Landroid/os/ParcelUuid;

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v12, Landroid/os/ParcelUuid;

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v14, Landroid/os/ParcelUuid;

    move-object/from16 v0, v28

    invoke-direct {v14, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v11, p9

    move/from16 v13, p14

    invoke-interface/range {v6 .. v14}, Landroid/bluetooth/IBluetoothGattCallback;->onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    :cond_0
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    move/from16 v16, p9

    move-wide/from16 v17, p10

    move-wide/from16 v19, p12

    move/from16 v21, p14

    move-wide/from16 v22, p15

    move-wide/from16 v24, p17

    .line 815
    invoke-direct/range {v8 .. v25}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetDescriptorNative(IIIJJIJJIJJ)V

    .line 823
    .end local v26    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :goto_0
    return-void

    .line 821
    :cond_1
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/bluetooth/gatt/GattService;->continueSearch(II)V

    goto :goto_0
.end method

.method onGetIncludedService(IIIIJJIIJJ)V
    .locals 25
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "inclSrvcType"    # I
    .param p10, "inclSrvcInstId"    # I
    .param p11, "inclSrvcUuidLsb"    # J
    .param p13, "inclSrvcUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 829
    new-instance v24, Ljava/util/UUID;

    move-object/from16 v0, v24

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 830
    .local v24, "srvcUuid":Ljava/util/UUID;
    new-instance v23, Ljava/util/UUID;

    move-object/from16 v0, v23

    move-wide/from16 v1, p13

    move-wide/from16 v3, p11

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 831
    .local v23, "inclSrvcUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v7

    .line 833
    .local v7, "address":Ljava/lang/String;
    const-string v6, "BtGatt.GattService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onGetIncludedService() - address="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", status="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uuid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", inclUuid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", connId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    if-nez p2, :cond_1

    .line 838
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v22

    .line 839
    .local v22, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v22, :cond_0

    .line 840
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v10, Landroid/os/ParcelUuid;

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v13, Landroid/os/ParcelUuid;

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-interface/range {v6 .. v13}, Landroid/bluetooth/IBluetoothGattCallback;->onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V

    :cond_0
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    move/from16 v16, p9

    move/from16 v17, p10

    move-wide/from16 v18, p11

    move-wide/from16 v20, p13

    .line 846
    invoke-direct/range {v8 .. v21}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetIncludedServiceNative(IIIJJIIJJ)V

    .line 853
    .end local v22    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :goto_0
    return-void

    .line 851
    :cond_1
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/bluetooth/gatt/GattService;->continueSearch(II)V

    goto :goto_0
.end method

.method onIncludedServiceAdded(IIII)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcHandle"    # I
    .param p4, "includedSrvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1713
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncludedServiceAdded() status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", included="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    invoke-direct {p0, p2, p1, p3}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    .line 1716
    return-void
.end method

.method onMtuChanged(II)V
    .locals 5
    .param p1, "connId"    # I
    .param p2, "mtu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1925
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMtuChanged() - connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mtu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .line 1928
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1934
    :cond_0
    :goto_0
    return-void

    .line 1930
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    .line 1931
    .local v1, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v1, :cond_0

    .line 1933
    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {v2, v0, p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onMtuChanged(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method onMultipleAdvertiseCallback(IIZLandroid/bluetooth/le/AdvertiseSettings;)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "status"    # I
    .param p3, "isStart"    # Z
    .param p4, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1228
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1229
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 1230
    :cond_0
    const-string v1, "BtGatt.GattService"

    const-string v2, "Advertise app or callback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :goto_0
    return-void

    .line 1233
    :cond_1
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V

    goto :goto_0
.end method

.method onNotificationSent(II)V
    .locals 5
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1892
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotificationSent() connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .line 1895
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1908
    :cond_0
    :goto_0
    return-void

    .line 1897
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    .line 1898
    .local v1, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v1, :cond_0

    .line 1900
    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1901
    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {v2, v0, p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onNotificationSent(Ljava/lang/String;I)V

    goto :goto_0

    .line 1903
    :cond_2
    const/16 v2, 0x8f

    if-ne p2, v2, :cond_3

    .line 1904
    const/4 p2, 0x0

    .line 1906
    :cond_3
    new-instance v2, Lcom/android/bluetooth/gatt/CallbackInfo;

    invoke-direct {v2, v0, p2}, Lcom/android/bluetooth/gatt/CallbackInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/gatt/ContextMap$App;->queueCallback(Lcom/android/bluetooth/gatt/CallbackInfo;)V

    goto :goto_0
.end method

.method onNotify(ILjava/lang/String;IIJJIJJZ[B)V
    .locals 15
    .param p1, "connId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "isNotify"    # Z
    .param p15, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 871
    new-instance v14, Ljava/util/UUID;

    move-wide/from16 v0, p7

    move-wide/from16 v2, p5

    invoke-direct {v14, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 872
    .local v14, "srvcUuid":Ljava/util/UUID;
    new-instance v13, Ljava/util/UUID;

    move-wide/from16 v0, p12

    move-wide/from16 v2, p10

    invoke-direct {v13, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 874
    .local v13, "charUuid":Ljava/util/UUID;
    const-string v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotify() - address="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", charUuid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p15

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", connId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-direct {p0, v13}, Lcom/android/bluetooth/gatt/GattService;->isHidUuid(Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.permission.BLUETOOTH_PRIVILEGED"

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/gatt/GattService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v12

    .line 884
    .local v12, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v12, :cond_0

    .line 885
    iget-object v4, v12, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v8, Landroid/os/ParcelUuid;

    invoke-direct {v8, v14}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v10, Landroid/os/ParcelUuid;

    invoke-direct {v10, v13}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v9, p9

    move-object/from16 v11, p15

    invoke-interface/range {v4 .. v11}, Landroid/bluetooth/IBluetoothGattCallback;->onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    goto :goto_0
.end method

.method onReadCharacteristic(IIIIJJIJJI[B)V
    .locals 16
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "charType"    # I
    .param p15, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 897
    new-instance v15, Ljava/util/UUID;

    move-wide/from16 v0, p7

    move-wide/from16 v2, p5

    invoke-direct {v15, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 898
    .local v15, "srvcUuid":Ljava/util/UUID;
    new-instance v14, Ljava/util/UUID;

    move-wide/from16 v0, p12

    move-wide/from16 v2, p10

    invoke-direct {v14, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 899
    .local v14, "charUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v5

    .line 901
    .local v5, "address":Ljava/lang/String;
    const-string v4, "BtGatt.GattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReadCharacteristic() - address="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p15

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v13

    .line 905
    .local v13, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v13, :cond_0

    .line 906
    iget-object v4, v13, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v9, Landroid/os/ParcelUuid;

    invoke-direct {v9, v15}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v11, Landroid/os/ParcelUuid;

    invoke-direct {v11, v14}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, p9

    move-object/from16 v12, p15

    invoke-interface/range {v4 .. v12}, Landroid/bluetooth/IBluetoothGattCallback;->onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    .line 910
    :cond_0
    return-void
.end method

.method onReadDescriptor(IIIIJJIJJIJJI[B)V
    .locals 21
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "descrInstId"    # I
    .param p15, "descrUuidLsb"    # J
    .param p17, "descrUuidMsb"    # J
    .param p19, "charType"    # I
    .param p20, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 958
    new-instance v19, Ljava/util/UUID;

    move-object/from16 v0, v19

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 959
    .local v19, "srvcUuid":Ljava/util/UUID;
    new-instance v17, Ljava/util/UUID;

    move-object/from16 v0, v17

    move-wide/from16 v1, p12

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 960
    .local v17, "charUuid":Ljava/util/UUID;
    new-instance v18, Ljava/util/UUID;

    move-object/from16 v0, v18

    move-wide/from16 v1, p17

    move-wide/from16 v3, p15

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 961
    .local v18, "descrUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v6

    .line 963
    .local v6, "address":Ljava/lang/String;
    const-string v5, "BtGatt.GattService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReadDescriptor() - address="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p20

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v16

    .line 967
    .local v16, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v16, :cond_0

    .line 968
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v10, Landroid/os/ParcelUuid;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v12, Landroid/os/ParcelUuid;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v14, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v11, p9

    move/from16 v13, p14

    move-object/from16 v15, p20

    invoke-interface/range {v5 .. v15}, Landroid/bluetooth/IBluetoothGattCallback;->onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    .line 973
    :cond_0
    return-void
.end method

.method onReadRemoteRssi(ILjava/lang/String;II)V
    .locals 4
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "rssi"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 999
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReadRemoteRssi() - clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rssi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1003
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_0

    .line 1004
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onReadRemoteRssi(Ljava/lang/String;II)V

    .line 1006
    :cond_0
    return-void
.end method

.method onRegisterForNotifications(IIIIIJJIJJ)V
    .locals 10
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "registered"    # I
    .param p4, "srvcType"    # I
    .param p5, "srvcInstId"    # I
    .param p6, "srvcUuidLsb"    # J
    .param p8, "srvcUuidMsb"    # J
    .param p10, "charInstId"    # I
    .param p11, "charUuidLsb"    # J
    .param p13, "charUuidMsb"    # J

    .prologue
    .line 858
    new-instance v6, Ljava/util/UUID;

    move-wide/from16 v0, p8

    move-wide/from16 v2, p6

    invoke-direct {v6, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 859
    .local v6, "srvcUuid":Ljava/util/UUID;
    new-instance v5, Ljava/util/UUID;

    move-wide/from16 v0, p13

    move-wide/from16 v2, p11

    invoke-direct {v5, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 860
    .local v5, "charUuid":Ljava/util/UUID;
    iget-object v7, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v7, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v4

    .line 862
    .local v4, "address":Ljava/lang/String;
    const-string v7, "BtGatt.GattService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onRegisterForNotifications() - address="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", status="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", registered="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", charUuid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return-void
.end method

.method onResponseSendCompleted(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "attrHandle"    # I

    .prologue
    .line 1888
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponseSendCompleted() handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    return-void
.end method

.method onScanFilterConfig(IIIII)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "status"    # I
    .param p3, "clientIf"    # I
    .param p4, "filterType"    # I
    .param p5, "availableSpace"    # I

    .prologue
    .line 1028
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanFilterConfig() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", filterType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", availableSpace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0, p3, p2}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    .line 1034
    return-void
.end method

.method onScanFilterEnableDisabled(III)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "status"    # I
    .param p3, "clientIf"    # I

    .prologue
    .line 1010
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanFilterEnableDisabled() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0, p3, p2}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    .line 1014
    return-void
.end method

.method onScanFilterParamsConfigured(IIII)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "status"    # I
    .param p3, "clientIf"    # I
    .param p4, "availableSpace"    # I

    .prologue
    .line 1018
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanFilterParamsConfigured() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", availableSpace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0, p3, p2}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    .line 1023
    return-void
.end method

.method onScanResult(Ljava/lang/String;I[B)V
    .locals 24
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "adv_data"    # [B

    .prologue
    .line 611
    const-string v6, "BtGatt.GattService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onScanResult() - address="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", rssi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->parseUuids([B)Ljava/util/List;

    move-result-object v21

    .line 614
    .local v21, "remoteUuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v6}, Lcom/android/bluetooth/gatt/ScanManager;->getRegularScanQueue()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/bluetooth/gatt/ScanClient;

    .line 615
    .local v13, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget-object v6, v13, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    array-length v6, v6

    if-lez v6, :cond_4

    .line 616
    const/16 v19, 0x0

    .line 617
    .local v19, "matches":I
    iget-object v12, v13, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    .local v12, "arr$":[Ljava/util/UUID;
    array-length v0, v12

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v16    # "i$":I
    .local v17, "i$":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v22, v12, v17

    .line 618
    .local v22, "search":Ljava/util/UUID;
    const-string v6, "BtGatt.GattService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "client.uuid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v17    # "i$":I
    .local v16, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/UUID;

    .line 620
    .local v20, "remote":Ljava/util/UUID;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 621
    const-string v6, "BtGatt.GattService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Match uuid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    add-int/lit8 v19, v19, 0x1

    .line 617
    .end local v20    # "remote":Ljava/util/UUID;
    :cond_2
    add-int/lit8 v16, v17, 0x1

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v16    # "i$":I
    .restart local v17    # "i$":I
    goto :goto_1

    .line 628
    .end local v22    # "search":Ljava/util/UUID;
    :cond_3
    iget-object v6, v13, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    array-length v6, v6

    move/from16 v0, v19

    if-lt v0, v6, :cond_0

    .line 631
    .end local v12    # "arr$":[Ljava/util/UUID;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "matches":I
    :cond_4
    iget-boolean v6, v13, Lcom/android/bluetooth/gatt/ScanClient;->isServer:Z

    if-nez v6, :cond_6

    .line 632
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    iget v7, v13, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v10

    .line 633
    .local v10, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v10, :cond_0

    .line 634
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .line 636
    .local v5, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v4, Landroid/bluetooth/le/ScanResult;

    invoke-static/range {p3 .. p3}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    move/from16 v7, p2

    invoke-direct/range {v4 .. v9}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V

    .line 638
    .local v4, "result":Landroid/bluetooth/le/ScanResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/android/bluetooth/gatt/GattService;->matchesFilters(Lcom/android/bluetooth/gatt/ScanClient;Landroid/bluetooth/le/ScanResult;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 640
    :try_start_0
    iget-object v0, v13, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    move-object/from16 v23, v0

    .line 645
    .local v23, "settings":Landroid/bluetooth/le/ScanSettings;
    invoke-virtual/range {v23 .. v23}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    .line 647
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/gatt/GattService;->mOnFoundResults:Ljava/util/Map;

    monitor-enter v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mOnFoundResults:Ljava/util/Map;

    invoke-interface {v6, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    :try_start_2
    iget-object v6, v10, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothGattCallback;

    const/4 v7, 0x1

    invoke-interface {v6, v7, v4}, Landroid/bluetooth/IBluetoothGattCallback;->onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V

    .line 652
    :cond_5
    invoke-virtual/range {v23 .. v23}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 654
    iget-object v6, v10, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v6, v4}, Landroid/bluetooth/IBluetoothGattCallback;->onScanResult(Landroid/bluetooth/le/ScanResult;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 656
    .end local v23    # "settings":Landroid/bluetooth/le/ScanSettings;
    :catch_0
    move-exception v14

    .line 657
    .local v14, "e":Landroid/os/RemoteException;
    const-string v6, "BtGatt.GattService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    iget v7, v13, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->remove(I)V

    .line 659
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v6, v13}, Lcom/android/bluetooth/gatt/ScanManager;->stopScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto/16 :goto_0

    .line 649
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v23    # "settings":Landroid/bluetooth/le/ScanSettings;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 664
    .end local v4    # "result":Landroid/bluetooth/le/ScanResult;
    .end local v5    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v10    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    .end local v23    # "settings":Landroid/bluetooth/le/ScanSettings;
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    iget v7, v13, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v11

    .line 665
    .local v11, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v11, :cond_0

    .line 667
    :try_start_5
    iget-object v6, v11, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v6, v0, v1, v2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onScanResult(Ljava/lang/String;I[B)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 668
    :catch_1
    move-exception v14

    .line 669
    .restart local v14    # "e":Landroid/os/RemoteException;
    const-string v6, "BtGatt.GattService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    iget v7, v13, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->remove(I)V

    .line 671
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v6, v13}, Lcom/android/bluetooth/gatt/ScanManager;->stopScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto/16 :goto_0

    .line 676
    .end local v11    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    .end local v13    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_7
    return-void
.end method

.method onSearchCompleted(II)V
    .locals 3
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 734
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSearchCompleted() - connId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->continueSearch(II)V

    .line 737
    return-void
.end method

.method onSearchResult(IIIJJ)V
    .locals 16
    .param p1, "connId"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuidLsb"    # J
    .param p6, "srvcUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 742
    new-instance v14, Ljava/util/UUID;

    move-wide/from16 v0, p6

    move-wide/from16 v2, p4

    invoke-direct {v14, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 743
    .local v14, "uuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v12

    .line 745
    .local v12, "address":Ljava/lang/String;
    const-string v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSearchResult() - address="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uuid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", connId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lcom/android/bluetooth/gatt/SearchQueue;->add(IIIJJ)V

    .line 749
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v13

    .line 750
    .local v13, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v13, :cond_0

    .line 751
    iget-object v4, v13, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-direct {v5, v14}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v4, v12, v0, v1, v5}, Landroid/bluetooth/IBluetoothGattCallback;->onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V

    .line 754
    :cond_0
    return-void
.end method

.method onServerCongestion(IZ)V
    .locals 5
    .param p1, "connId"    # I
    .param p2, "congested"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1911
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServerCongestion() - connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", congested="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1914
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-nez v0, :cond_1

    .line 1922
    :cond_0
    return-void

    .line 1916
    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    .line 1917
    :goto_0
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1918
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ContextMap$App;->popQueuedCallback()Lcom/android/bluetooth/gatt/CallbackInfo;

    move-result-object v1

    .line 1919
    .local v1, "callbackInfo":Lcom/android/bluetooth/gatt/CallbackInfo;
    if-eqz v1, :cond_0

    .line 1920
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    iget-object v3, v1, Lcom/android/bluetooth/gatt/CallbackInfo;->address:Ljava/lang/String;

    iget v4, v1, Lcom/android/bluetooth/gatt/CallbackInfo;->status:I

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGattServerCallback;->onNotificationSent(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method onServerRegistered(IIJJ)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "uuidLsb"    # J
    .param p5, "uuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1687
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .line 1688
    .local v1, "uuid":Ljava/util/UUID;
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServerRegistered() - UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", serverIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByUuid(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1690
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v0, :cond_0

    .line 1691
    iput p2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    .line 1692
    new-instance v2, Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;

    invoke-direct {v2, p0, p2}, Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;-><init>(Lcom/android/bluetooth/gatt/GattService;I)V

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/gatt/ContextMap$App;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 1693
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServerRegistered(II)V

    .line 1695
    :cond_0
    return-void
.end method

.method onServiceAdded(IIIIJJI)V
    .locals 9
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "srvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1700
    new-instance v5, Ljava/util/UUID;

    move-wide/from16 v0, p7

    invoke-direct {v5, v0, v1, p5, p6}, Ljava/util/UUID;-><init>(JJ)V

    .line 1701
    .local v5, "uuid":Ljava/util/UUID;
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceAdded() UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",serverIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    if-nez p1, :cond_0

    .line 1704
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v8

    move v3, p2

    move/from16 v4, p9

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/bluetooth/gatt/HandleMap;->addService(IILjava/util/UUID;IIZ)V

    .line 1708
    :cond_0
    move/from16 v0, p9

    invoke-direct {p0, p2, p1, v0}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    .line 1709
    return-void
.end method

.method onServiceDeleted(III)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcHandle"    # I

    .prologue
    .line 1760
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDeleted() srvcHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/gatt/HandleMap;->deleteService(II)V

    .line 1763
    return-void
.end method

.method onServiceStarted(III)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1744
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStarted() srvcHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    if-nez p1, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/bluetooth/gatt/HandleMap;->setStarted(IIZ)V

    .line 1748
    :cond_0
    return-void
.end method

.method onServiceStopped(III)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1752
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStopped() srvcHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    if-nez p1, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/bluetooth/gatt/HandleMap;->setStarted(IIZ)V

    .line 1756
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/android/bluetooth/gatt/GattService;->stopNextService(II)V

    .line 1757
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 254
    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/android/bluetooth/gatt/GattDebugUtils;->handleDebugAction(Lcom/android/bluetooth/gatt/GattService;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x2

    .line 258
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/bluetooth/btservice/ProfileService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0
.end method

.method onTrackAdvFoundLost(IILjava/lang/String;II)V
    .locals 8
    .param p1, "filterIndex"    # I
    .param p2, "addrType"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "advState"    # I
    .param p5, "clientIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1193
    const-string v5, "BtGatt.GattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClientAdvertiserFoundLost() - clientIf="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "address = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "adv_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "client_if = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v5, p5}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1197
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-nez v5, :cond_2

    .line 1198
    :cond_0
    const-string v5, "BtGatt.GattService"

    const-string v6, "app or callback is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_1
    return-void

    .line 1203
    :cond_2
    const/4 v5, 0x1

    if-ne p4, v5, :cond_1

    .line 1207
    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v5}, Lcom/android/bluetooth/gatt/ScanManager;->getRegularScanQueue()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ScanClient;

    .line 1208
    .local v1, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget v5, v1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    if-ne v5, p5, :cond_3

    .line 1209
    iget-object v4, v1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 1210
    .local v4, "settings":Landroid/bluetooth/le/ScanSettings;
    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3

    .line 1213
    :goto_0
    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mOnFoundResults:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1214
    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mOnFoundResults:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/ScanResult;

    .line 1215
    .local v3, "result":Landroid/bluetooth/le/ScanResult;
    iget-object v5, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothGattCallback;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Landroid/bluetooth/IBluetoothGattCallback;->onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V

    .line 1216
    iget-object v6, p0, Lcom/android/bluetooth/gatt/GattService;->mOnFoundResults:Ljava/util/Map;

    monitor-enter v6

    .line 1217
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mOnFoundResults:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method onWriteCharacteristic(IIIIJJIJJ)V
    .locals 15
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 917
    new-instance v14, Ljava/util/UUID;

    move-wide/from16 v0, p7

    move-wide/from16 v2, p5

    invoke-direct {v14, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 918
    .local v14, "srvcUuid":Ljava/util/UUID;
    new-instance v13, Ljava/util/UUID;

    move-wide/from16 v0, p12

    move-wide/from16 v2, p10

    invoke-direct {v13, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 919
    .local v13, "charUuid":Ljava/util/UUID;
    iget-object v6, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v5

    .line 921
    .local v5, "address":Ljava/lang/String;
    const-string v6, "BtGatt.GattService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onWriteCharacteristic() - address="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v6, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v12

    .line 925
    .local v12, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-nez v12, :cond_0

    .line 939
    :goto_0
    return-void

    .line 927
    :cond_0
    iget-object v6, v12, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 928
    iget-object v4, v12, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v9, Landroid/os/ParcelUuid;

    invoke-direct {v9, v14}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v11, Landroid/os/ParcelUuid;

    invoke-direct {v11, v13}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, p9

    invoke-interface/range {v4 .. v11}, Landroid/bluetooth/IBluetoothGattCallback;->onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    goto :goto_0

    .line 932
    :cond_1
    const/16 v6, 0x8f

    move/from16 v0, p2

    if-ne v0, v6, :cond_2

    .line 933
    const/16 p2, 0x0

    .line 935
    :cond_2
    new-instance v4, Lcom/android/bluetooth/gatt/CallbackInfo;

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object v9, v14

    move/from16 v10, p9

    move-object v11, v13

    invoke-direct/range {v4 .. v11}, Lcom/android/bluetooth/gatt/CallbackInfo;-><init>(Ljava/lang/String;IIILjava/util/UUID;ILjava/util/UUID;)V

    .line 937
    .local v4, "callbackInfo":Lcom/android/bluetooth/gatt/CallbackInfo;
    invoke-virtual {v12, v4}, Lcom/android/bluetooth/gatt/ContextMap$App;->queueCallback(Lcom/android/bluetooth/gatt/CallbackInfo;)V

    goto :goto_0
.end method

.method onWriteDescriptor(IIIIJJIJJIJJ)V
    .locals 19
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "descrInstId"    # I
    .param p15, "descrUuidLsb"    # J
    .param p17, "descrUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 980
    new-instance v18, Ljava/util/UUID;

    move-object/from16 v0, v18

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 981
    .local v18, "srvcUuid":Ljava/util/UUID;
    new-instance v16, Ljava/util/UUID;

    move-object/from16 v0, v16

    move-wide/from16 v1, p12

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 982
    .local v16, "charUuid":Ljava/util/UUID;
    new-instance v17, Ljava/util/UUID;

    move-object/from16 v0, v17

    move-wide/from16 v1, p17

    move-wide/from16 v3, p15

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 983
    .local v17, "descrUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v6

    .line 985
    .local v6, "address":Ljava/lang/String;
    const-string v5, "BtGatt.GattService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onWriteDescriptor() - address="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v15

    .line 989
    .local v15, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v15, :cond_0

    .line 990
    iget-object v5, v15, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v10, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v12, Landroid/os/ParcelUuid;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v14, Landroid/os/ParcelUuid;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v11, p9

    move/from16 v13, p14

    invoke-interface/range {v5 .. v14}, Landroid/bluetooth/IBluetoothGattCallback;->onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    .line 995
    :cond_0
    return-void
.end method

.method parseTimestampNanos([B)J
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 1124
    invoke-static {p1}, Lcom/android/bluetooth/util/NumberUtils;->littleEndianByteArrayToInt([B)I

    move-result v2

    int-to-long v0, v2

    .line 1126
    .local v0, "timestampUnit":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x32

    mul-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    return-wide v2
.end method

.method readCharacteristic(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;I)V
    .locals 17
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "authReq"    # I

    .prologue
    .line 1502
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->isHidUuid(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1505
    :cond_0
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readCharacteristic() - address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 1508
    .local v16, "connId":Ljava/lang/Integer;
    if-eqz v16, :cond_1

    .line 1509
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v10, p6

    move/from16 v15, p8

    invoke-direct/range {v2 .. v15}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadCharacteristicNative(IIIJJIJJI)V

    .line 1516
    :goto_0
    return-void

    .line 1515
    :cond_1
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readCharacteristic() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method readDescriptor(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;ILjava/util/UUID;I)V
    .locals 22
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "descrInstanceId"    # I
    .param p9, "descrUuid"    # Ljava/util/UUID;
    .param p10, "authReq"    # I

    .prologue
    .line 1546
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->isHidUuid(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1549
    :cond_0
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readDescriptor() - address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 1552
    .local v21, "connId":Ljava/lang/Integer;
    if-eqz v21, :cond_1

    .line 1553
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    invoke-virtual/range {p9 .. p9}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v16

    invoke-virtual/range {p9 .. p9}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v18

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v10, p6

    move/from16 v15, p8

    move/from16 v20, p10

    invoke-direct/range {v2 .. v20}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadDescriptorNative(IIIJJIJJIJJI)V

    .line 1563
    :goto_0
    return-void

    .line 1562
    :cond_1
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readDescriptor() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method readRemoteRssi(ILjava/lang/String;)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 1629
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readRemoteRssi() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadRemoteRssiNative(ILjava/lang/String;)V

    .line 1633
    return-void
.end method

.method refreshDevice(ILjava/lang/String;)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 1481
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshDevice() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->gattClientRefreshNative(ILjava/lang/String;)V

    .line 1485
    return-void
.end method

.method registerClient(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattCallback;)V
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattCallback;

    .prologue
    .line 1405
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerClient() - UUID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->add(Ljava/util/UUID;Ljava/lang/Object;)V

    .line 1409
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->gattClientRegisterAppNative(JJ)V

    .line 1411
    return-void
.end method

.method registerForNotification(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Z)V
    .locals 18
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "enable"    # Z

    .prologue
    .line 1611
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->isHidUuid(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1614
    :cond_0
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerForNotification() - address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 1617
    .local v17, "connId":Ljava/lang/Integer;
    if-eqz v17, :cond_1

    .line 1618
    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v7

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v9

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v12

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v14

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v11, p6

    move/from16 v16, p8

    invoke-direct/range {v2 .. v16}, Lcom/android/bluetooth/gatt/GattService;->gattClientRegisterForNotificationsNative(ILjava/lang/String;IIJJIJJZ)V

    .line 1626
    :goto_0
    return-void

    .line 1624
    :cond_1
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerForNotification() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method registerServer(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattServerCallback;)V
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattServerCallback;

    .prologue
    .line 1941
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerServer() - UUID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->add(Ljava/util/UUID;Ljava/lang/Object;)V

    .line 1945
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->gattServerRegisterAppNative(JJ)V

    .line 1947
    return-void
.end method

.method removeService(IIILjava/util/UUID;)V
    .locals 4
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "srvcUuid"    # Ljava/util/UUID;

    .prologue
    .line 2065
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeService() - uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v1, p4, p2, p3}, Lcom/android/bluetooth/gatt/HandleMap;->getServiceHandle(Ljava/util/UUID;II)I

    move-result v0

    .line 2070
    .local v0, "srvcHandle":I
    if-nez v0, :cond_0

    .line 2072
    :goto_0
    return-void

    .line 2071
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/gatt/GattService;->gattServerDeleteServiceNative(II)V

    goto :goto_0
.end method

.method sendNotification(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Z[B)V
    .locals 6
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "confirm"    # Z
    .param p9, "value"    # [B

    .prologue
    .line 2101
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    const-string v3, "BtGatt.GattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendNotification() - address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v3, p5, p3, p4}, Lcom/android/bluetooth/gatt/HandleMap;->getServiceHandle(Ljava/util/UUID;II)I

    move-result v2

    .line 2106
    .local v2, "srvcHandle":I
    if-nez v2, :cond_1

    .line 2119
    :cond_0
    :goto_0
    return-void

    .line 2108
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v3, v2, p7, p6}, Lcom/android/bluetooth/gatt/HandleMap;->getCharacteristicHandle(ILjava/util/UUID;I)I

    move-result v0

    .line 2109
    .local v0, "charHandle":I
    if-eqz v0, :cond_0

    .line 2111
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v3, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2112
    .local v1, "connId":I
    if-eqz v1, :cond_0

    .line 2114
    if-eqz p8, :cond_2

    .line 2115
    invoke-direct {p0, p1, v0, v1, p9}, Lcom/android/bluetooth/gatt/GattService;->gattServerSendIndicationNative(III[B)V

    goto :goto_0

    .line 2117
    :cond_2
    invoke-direct {p0, p1, v0, v1, p9}, Lcom/android/bluetooth/gatt/GattService;->gattServerSendNotificationNative(III[B)V

    goto :goto_0
.end method

.method sendResponse(ILjava/lang/String;III[B)V
    .locals 10
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "requestId"    # I
    .param p4, "status"    # I
    .param p5, "offset"    # I
    .param p6, "value"    # [B

    .prologue
    .line 2083
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendResponse() - address="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    const/4 v5, 0x0

    .line 2088
    .local v5, "handle":I
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p3}, Lcom/android/bluetooth/gatt/HandleMap;->getByRequestId(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v9

    .line 2089
    .local v9, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    if-eqz v9, :cond_0

    iget v5, v9, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 2091
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2092
    .local v2, "connId":I
    int-to-byte v4, p4

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->gattServerSendResponseNative(IIIIII[BI)V

    .line 2094
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p3}, Lcom/android/bluetooth/gatt/HandleMap;->deleteRequest(I)V

    .line 2095
    return-void
.end method

.method serverConnect(ILjava/lang/String;ZI)V
    .locals 3
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z
    .param p4, "transport"    # I

    .prologue
    .line 1966
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverConnect() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->gattServerConnectNative(ILjava/lang/String;ZI)V

    .line 1970
    return-void
.end method

.method serverDisconnect(ILjava/lang/String;)V
    .locals 4
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 1973
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1976
    .local v0, "connId":Ljava/lang/Integer;
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serverDisconnect() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/bluetooth/gatt/GattService;->gattServerDisconnectNative(ILjava/lang/String;I)V

    .line 1979
    return-void

    .line 1978
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected start()Z
    .locals 2

    .prologue
    .line 217
    const-string v0, "BtGatt.GattService"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->initializeNative()V

    .line 219
    new-instance v0, Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;-><init>(Lcom/android/bluetooth/gatt/GattService;Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    .line 220
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->start()V

    .line 222
    new-instance v0, Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanManager;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    .line 223
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager;->start()V

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method startMultiAdvertising(ILandroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    .line 1439
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 1440
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMultiAdvertising, clientIf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    if-eqz p2, :cond_0

    .line 1442
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advertiseData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/le/AdvertiseData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_0
    if-eqz p3, :cond_1

    .line 1445
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scanResponseData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/bluetooth/le/AdvertiseData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :cond_1
    if-eqz p4, :cond_2

    .line 1448
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advertiseSettings = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/bluetooth/le/AdvertiseSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    new-instance v1, Lcom/android/bluetooth/gatt/AdvertiseClient;

    invoke-direct {v1, p1, p4, p2, p3}, Lcom/android/bluetooth/gatt/AdvertiseClient;-><init>(ILandroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->startAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    .line 1452
    return-void
.end method

.method startScan(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z
    .param p3, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1373
    .local p4, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .local p5, "storages":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/bluetooth/le/ResultStorageDescriptor;>;>;"
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 1374
    invoke-direct {p0, p3}, Lcom/android/bluetooth/gatt/GattService;->needsPrivilegedPermissionForScan(Landroid/bluetooth/le/ScanSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1377
    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1378
    const-string v0, "BtGatt.GattService"

    const-string v1, "start scan with filters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filter List = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :goto_0
    iget-object v6, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v0, Lcom/android/bluetooth/gatt/ScanClient;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/gatt/ScanManager;->startScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 1384
    return-void

    .line 1381
    :cond_1
    const-string v0, "BtGatt.GattService"

    const-string v1, "start scan without filters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected stop()Z
    .locals 2

    .prologue
    .line 229
    const-string v0, "BtGatt.GattService"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->clear()V

    .line 231
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->clear()V

    .line 232
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/SearchQueue;->clear()V

    .line 233
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/HandleMap;->clear()V

    .line 234
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 235
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 236
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->cleanup()V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager;->cleanup()V

    .line 238
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method stopMultiAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V
    .locals 3
    .param p1, "client"    # Lcom/android/bluetooth/gatt/AdvertiseClient;

    .prologue
    .line 1455
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 1456
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMultiAdvertising, clientIf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->stopAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    .line 1458
    return-void
.end method

.method stopScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 4
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    .line 1393
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 1394
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/gatt/ScanManager;->getBatchScanQueue()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/ScanManager;->getRegularScanQueue()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int v0, v1, v2

    .line 1396
    .local v0, "scanQueueSize":I
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopScan() - queue size ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/ScanManager;->stopScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 1398
    return-void
.end method

.method unregisterClient(I)V
    .locals 3
    .param p1, "clientIf"    # I

    .prologue
    .line 1414
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterClient() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->remove(I)V

    .line 1418
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->gattClientUnregisterAppNative(I)V

    .line 1419
    return-void
.end method

.method unregisterServer(I)V
    .locals 3
    .param p1, "serverIf"    # I

    .prologue
    .line 1950
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1953
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterServer() - Invalid serverIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    :goto_0
    return-void

    .line 1957
    :cond_0
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterServer() - serverIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->deleteServices(I)V

    .line 1961
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->remove(I)V

    .line 1962
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->gattServerUnregisterAppNative(I)V

    goto :goto_0
.end method

.method writeCharacteristic(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;II[B)V
    .locals 19
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "writeType"    # I
    .param p9, "authReq"    # I
    .param p10, "value"    # [B

    .prologue
    .line 1522
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->isHidUuid(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1525
    :cond_0
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeCharacteristic() - address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 p8, 0x3

    .line 1528
    :cond_1
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Write Characteristic: writeType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 1531
    .local v18, "connId":Ljava/lang/Integer;
    if-eqz v18, :cond_2

    .line 1532
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v10, p6

    move/from16 v15, p8

    move/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v2 .. v17}, Lcom/android/bluetooth/gatt/GattService;->gattClientWriteCharacteristicNative(IIIJJIJJII[B)V

    .line 1539
    :goto_0
    return-void

    .line 1538
    :cond_2
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeCharacteristic() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method writeDescriptor(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;ILjava/util/UUID;II[B)V
    .locals 24
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "descrInstanceId"    # I
    .param p9, "descrUuid"    # Ljava/util/UUID;
    .param p10, "writeType"    # I
    .param p11, "authReq"    # I
    .param p12, "value"    # [B

    .prologue
    .line 1570
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->isHidUuid(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1573
    :cond_0
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeDescriptor() - address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    .line 1576
    .local v23, "connId":Ljava/lang/Integer;
    if-eqz v23, :cond_1

    .line 1577
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    invoke-virtual/range {p9 .. p9}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v16

    invoke-virtual/range {p9 .. p9}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v18

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v10, p6

    move/from16 v15, p8

    move/from16 v20, p10

    move/from16 v21, p11

    move-object/from16 v22, p12

    invoke-direct/range {v2 .. v22}, Lcom/android/bluetooth/gatt/GattService;->gattClientWriteDescriptorNative(IIIJJIJJIJJII[B)V

    .line 1587
    :goto_0
    return-void

    .line 1586
    :cond_1
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeDescriptor() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
