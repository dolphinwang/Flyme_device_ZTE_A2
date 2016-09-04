.class Lcom/zte/mifavor/widget/DatePickerDialog$1;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/widget/DatePicker$ValidationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/DatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/DatePickerDialog;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/DatePickerDialog;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/zte/mifavor/widget/DatePickerDialog$1;->this$0:Lcom/zte/mifavor/widget/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidationChanged(Z)V
    .locals 3
    .param p1, "valid"    # Z

    .prologue
    .line 209
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerDialog$1;->this$0:Lcom/zte/mifavor/widget/DatePickerDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/DatePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 210
    .local v0, "positive":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    :cond_0
    return-void
.end method
