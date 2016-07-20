.class Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "GattService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/GattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientDeathRecipient"
.end annotation


# instance fields
.field mAppIf:I

.field final synthetic this$0:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/gatt/GattService;I)V
    .locals 0
    .param p2, "appIf"    # I

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput p2, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    .line 271
    return-void
.end method

.method private isScanClient(I)Z
    .locals 4
    .param p1, "clientIf"    # I

    .prologue
    const/4 v2, 0x1

    .line 289
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    # getter for: Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;
    invoke-static {v3}, Lcom/android/bluetooth/gatt/GattService;->access$000(Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/ScanManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/gatt/ScanManager;->getRegularScanQueue()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .line 290
    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget v3, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    if-ne v3, p1, :cond_0

    .line 299
    .end local v0    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    :goto_0
    return v2

    .line 294
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    # getter for: Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;
    invoke-static {v3}, Lcom/android/bluetooth/gatt/GattService;->access$000(Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/ScanManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/gatt/ScanManager;->getBatchScanQueue()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .line 295
    .restart local v0    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget v3, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    if-ne v3, p1, :cond_2

    goto :goto_0

    .line 299
    .end local v0    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 275
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binder is dead - unregistering client ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget v1, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->isScanClient(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    new-instance v0, Lcom/android/bluetooth/gatt/ScanClient;

    iget v1, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ)V

    .line 279
    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iput-boolean v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->appDied:Z

    .line 280
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/GattService;->stopScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 286
    .end local v0    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    :goto_0
    return-void

    .line 282
    :cond_0
    new-instance v0, Lcom/android/bluetooth/gatt/AdvertiseClient;

    iget v1, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/AdvertiseClient;-><init>(I)V

    .line 283
    .local v0, "client":Lcom/android/bluetooth/gatt/AdvertiseClient;
    iput-boolean v4, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->appDied:Z

    .line 284
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/GattService;->stopMultiAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    goto :goto_0
.end method
