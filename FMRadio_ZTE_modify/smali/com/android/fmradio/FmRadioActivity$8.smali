.class Lcom/android/fmradio/FmRadioActivity$8;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fmradio/FmRadioActivity;->registerButtonClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FmRadioActivity;


# direct methods
.method constructor <init>(Lcom/android/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fmradio/FmRadioActivity$8;->this$0:Lcom/android/fmradio/FmRadioActivity;

    .line 1989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1991
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$8;->this$0:Lcom/android/fmradio/FmRadioActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/fmradio/FmRadioActivity;->access$11(Lcom/android/fmradio/FmRadioActivity;Z)V

    .line 1992
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$8;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$6(Lcom/android/fmradio/FmRadioActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fmradio/FmStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    .line 1993
    .local v0, "freq":I
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$8;->this$0:Lcom/android/fmradio/FmRadioActivity;

    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity$8;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z
    invoke-static {v2}, Lcom/android/fmradio/FmRadioActivity;->access$12(Lcom/android/fmradio/FmRadioActivity;)Z

    move-result v2

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V
    invoke-static {v1, v0, v2}, Lcom/android/fmradio/FmRadioActivity;->access$13(Lcom/android/fmradio/FmRadioActivity;IZ)V

    .line 1994
    return-void
.end method
