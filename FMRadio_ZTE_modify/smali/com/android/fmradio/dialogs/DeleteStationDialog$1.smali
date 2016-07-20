.class Lcom/android/fmradio/dialogs/DeleteStationDialog$1;
.super Ljava/lang/Object;
.source "DeleteStationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fmradio/dialogs/DeleteStationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/dialogs/DeleteStationDialog;

.field private final synthetic val$stationFreq:I


# direct methods
.method constructor <init>(Lcom/android/fmradio/dialogs/DeleteStationDialog;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fmradio/dialogs/DeleteStationDialog$1;->this$0:Lcom/android/fmradio/dialogs/DeleteStationDialog;

    iput p2, p0, Lcom/android/fmradio/dialogs/DeleteStationDialog$1;->val$stationFreq:I

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/fmradio/dialogs/DeleteStationDialog$1;->this$0:Lcom/android/fmradio/dialogs/DeleteStationDialog;

    # getter for: Lcom/android/fmradio/dialogs/DeleteStationDialog;->mListener:Lcom/android/fmradio/dialogs/DeleteStationDialog$DeleteStationListener;
    invoke-static {v0}, Lcom/android/fmradio/dialogs/DeleteStationDialog;->access$0(Lcom/android/fmradio/dialogs/DeleteStationDialog;)Lcom/android/fmradio/dialogs/DeleteStationDialog$DeleteStationListener;

    move-result-object v0

    iget v1, p0, Lcom/android/fmradio/dialogs/DeleteStationDialog$1;->val$stationFreq:I

    invoke-interface {v0, v1}, Lcom/android/fmradio/dialogs/DeleteStationDialog$DeleteStationListener;->deleteStation(I)V

    .line 100
    return-void
.end method
