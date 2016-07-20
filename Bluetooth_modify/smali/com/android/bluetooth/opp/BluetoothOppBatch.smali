.class public Lcom/android/bluetooth/opp/BluetoothOppBatch;
.super Ljava/lang/Object;
.source "BluetoothOppBatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[Bluetooth.OPP]BtOppBatch"

.field private static final V:Z = true

.field private static mLastProcessInfoId:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field public final mDestination:Landroid/bluetooth/BluetoothDevice;

.field public final mDirection:I

.field public mId:I

.field private mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

.field private final mShares:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/opp/BluetoothOppShareInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mStatus:I

.field public final mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mLastProcessInfoId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 113
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    .line 115
    iget-wide v2, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    iput-wide v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mTimestamp:J

    .line 116
    iget v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    .line 117
    iget-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    .line 118
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 119
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    const-string v1, "[Bluetooth.OPP]BtOppBatch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New Batch created for info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    .line 132
    const-string v0, "[Bluetooth.OPP]BtOppBatch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addShare::info.uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v0, "[Bluetooth.OPP]BtOppBatch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addShare::info.id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  info.mStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

    iget v1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-interface {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;->onShareAdded(I)V

    .line 138
    :cond_0
    return-void
.end method

.method public cancelBatch()V
    .locals 5

    .prologue
    .line 169
    const-string v2, "[Bluetooth.OPP]BtOppBatch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "batch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is canceled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

    invoke-interface {v2}, Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;->onBatchCanceled()V

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 176
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 178
    .local v1, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_1

    .line 179
    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 180
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 184
    :goto_1
    const-string v2, "[Bluetooth.OPP]BtOppBatch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancel batch for info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mContext:Landroid/content/Context;

    iget v3, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v4, 0x1ea

    invoke-static {v2, v3, v4}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 175
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 182
    :cond_2
    iget-object v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    goto :goto_1

    .line 189
    .end local v1    # "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 190
    return-void
.end method

.method public deleteShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    .line 147
    const-string v0, "[Bluetooth.OPP]BtOppBatch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteShare::info.uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    .line 150
    const/16 v0, 0x1ea

    iput v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 151
    iget v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

    iget v1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-interface {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;->onShareDeleted(I)V

    .line 159
    :cond_1
    return-void
.end method

.method public getNumShares()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .locals 5

    .prologue
    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 224
    .local v1, "share":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v3, 0xbe

    if-ne v2, v3, :cond_0

    .line 226
    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    sget v3, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mLastProcessInfoId:I

    if-gt v2, v3, :cond_2

    .line 227
    const-string v2, "[Bluetooth.OPP]BtOppBatch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getSuccessShare:: infoId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "share":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method public hasShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerListern(Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mListener:Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;

    .line 214
    return-void
.end method

.method public updateShareState(II)V
    .locals 6
    .param p1, "infoId"    # I
    .param p2, "status"    # I

    .prologue
    .line 238
    const-string v3, "[Bluetooth.OPP]BtOppBatch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateShareState:: infoId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 240
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 241
    .local v1, "share":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget v3, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    if-ne v3, p1, :cond_1

    .line 242
    sput p1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mLastProcessInfoId:I

    .line 243
    const-string v3, "[Bluetooth.OPP]BtOppBatch"

    const-string v4, "updateShareState::before update Arraylist"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iput p2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 245
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 246
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    .line 247
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mShares:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 248
    .local v2, "tempshare":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    const-string v3, "[Bluetooth.OPP]BtOppBatch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateShareState:: last infoId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v3, "[Bluetooth.OPP]BtOppBatch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateShareState:: current infoId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v1    # "share":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .end local v2    # "tempshare":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :cond_0
    return-void

    .line 239
    .restart local v1    # "share":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
