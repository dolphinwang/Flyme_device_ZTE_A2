.class Lcom/zte/mifavor/widget/DayPickerView$1;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/DayPickerView;->postSetSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/DayPickerView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/DayPickerView;I)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/zte/mifavor/widget/DayPickerView$1;->this$0:Lcom/zte/mifavor/widget/DayPickerView;

    iput p2, p0, Lcom/zte/mifavor/widget/DayPickerView$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/zte/mifavor/widget/DayPickerView$1;->this$0:Lcom/zte/mifavor/widget/DayPickerView;

    iget v1, p0, Lcom/zte/mifavor/widget/DayPickerView$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/DayPickerView;->setSelection(I)V

    .line 236
    return-void
.end method
