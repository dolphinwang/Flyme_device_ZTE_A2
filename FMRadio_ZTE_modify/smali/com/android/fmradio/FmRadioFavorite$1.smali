.class Lcom/android/fmradio/FmRadioFavorite$1;
.super Ljava/lang/Object;
.source "FmRadioFavorite.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FmRadioFavorite;
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
    iput-object p1, p0, Lcom/android/fmradio/FmRadioFavorite$1;->this$0:Lcom/android/fmradio/FmRadioFavorite;

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 488
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 489
    .local v0, "mFreqString":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 520
    .local v1, "mStationFreq":I
    iget-object v2, p0, Lcom/android/fmradio/FmRadioFavorite$1;->this$0:Lcom/android/fmradio/FmRadioFavorite;

    .line 521
    const-string v3, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SAVEFAVOR"

    .line 522
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 520
    # invokes: Lcom/android/fmradio/FmRadioFavorite;->sendBroadcastToFmService(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/fmradio/FmRadioFavorite;->access$1(Lcom/android/fmradio/FmRadioFavorite;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void
.end method
