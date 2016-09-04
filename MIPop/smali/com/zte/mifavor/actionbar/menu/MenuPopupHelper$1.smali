.class Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper$1;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper$1;->this$0:Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper$1;->this$0:Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->onDismiss()V

    .line 316
    return-void
.end method
