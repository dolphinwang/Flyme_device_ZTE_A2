.class Lcom/android/fmradio/FmRadioFavorite$4;
.super Ljava/lang/Object;
.source "FmRadioFavorite.java"

# interfaces
.implements Lcom/android/fmradio/FmService$OnChannelListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fmradio/FmRadioFavorite;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FmRadioFavorite;


# direct methods
.method constructor <init>(Lcom/android/fmradio/FmRadioFavorite;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fmradio/FmRadioFavorite$4;->this$0:Lcom/android/fmradio/FmRadioFavorite;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/fmradio/FmRadioFavorite$4;)Lcom/android/fmradio/FmRadioFavorite;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/fmradio/FmRadioFavorite$4;->this$0:Lcom/android/fmradio/FmRadioFavorite;

    return-object v0
.end method


# virtual methods
.method public onExit()V
    .locals 3

    .prologue
    .line 230
    const-string v1, "FmRx/Favorite"

    const-string v2, "onExit()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 232
    .local v0, "mainHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/fmradio/FmRadioFavorite$4$1;

    invoke-direct {v1, p0}, Lcom/android/fmradio/FmRadioFavorite$4$1;-><init>(Lcom/android/fmradio/FmRadioFavorite$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method public onScanFinished(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 269
    const-string v1, "key_is_scan"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 272
    .local v0, "isScan":Z
    if-nez v0, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/fmradio/FmRadioFavorite$4;->this$0:Lcom/android/fmradio/FmRadioFavorite;

    # invokes: Lcom/android/fmradio/FmRadioFavorite;->dismissSearchDialog()V
    invoke-static {v1}, Lcom/android/fmradio/FmRadioFavorite;->access$5(Lcom/android/fmradio/FmRadioFavorite;)V

    .line 274
    const-string v1, "FmRx/Favorite"

    const-string v2, "mHandler.scan canceled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/android/fmradio/FmRadioFavorite$4;->this$0:Lcom/android/fmradio/FmRadioFavorite;

    # invokes: Lcom/android/fmradio/FmRadioFavorite;->dismissSearchDialog()V
    invoke-static {v1}, Lcom/android/fmradio/FmRadioFavorite;->access$5(Lcom/android/fmradio/FmRadioFavorite;)V

    goto :goto_0
.end method

.method public onSwitchAnntenna(Z)V
    .locals 3
    .param p1, "isSwitch"    # Z

    .prologue
    .line 256
    const-string v0, "FmRx/Favorite"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swtich antenna: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-nez p1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/fmradio/FmRadioFavorite$4;->this$0:Lcom/android/fmradio/FmRadioFavorite;

    invoke-virtual {v0}, Lcom/android/fmradio/FmRadioFavorite;->finish()V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/FmRadioFavorite$4;->this$0:Lcom/android/fmradio/FmRadioFavorite;

    # invokes: Lcom/android/fmradio/FmRadioFavorite;->dismissNoAntennaDialog()Z
    invoke-static {v0}, Lcom/android/fmradio/FmRadioFavorite;->access$4(Lcom/android/fmradio/FmRadioFavorite;)Z

    goto :goto_0
.end method

.method public onTuneFinished()V
    .locals 2

    .prologue
    .line 243
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 244
    .local v0, "mainHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/fmradio/FmRadioFavorite$4$2;

    invoke-direct {v1, p0}, Lcom/android/fmradio/FmRadioFavorite$4$2;-><init>(Lcom/android/fmradio/FmRadioFavorite$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    return-void
.end method
