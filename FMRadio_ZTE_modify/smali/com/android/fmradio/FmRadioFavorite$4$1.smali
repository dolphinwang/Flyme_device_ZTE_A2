.class Lcom/android/fmradio/FmRadioFavorite$4$1;
.super Ljava/lang/Object;
.source "FmRadioFavorite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fmradio/FmRadioFavorite$4;->onExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/fmradio/FmRadioFavorite$4;


# direct methods
.method constructor <init>(Lcom/android/fmradio/FmRadioFavorite$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fmradio/FmRadioFavorite$4$1;->this$1:Lcom/android/fmradio/FmRadioFavorite$4;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/fmradio/FmRadioFavorite$4$1;->this$1:Lcom/android/fmradio/FmRadioFavorite$4;

    # getter for: Lcom/android/fmradio/FmRadioFavorite$4;->this$0:Lcom/android/fmradio/FmRadioFavorite;
    invoke-static {v0}, Lcom/android/fmradio/FmRadioFavorite$4;->access$0(Lcom/android/fmradio/FmRadioFavorite$4;)Lcom/android/fmradio/FmRadioFavorite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fmradio/FmRadioFavorite;->finish()V

    .line 236
    return-void
.end method
