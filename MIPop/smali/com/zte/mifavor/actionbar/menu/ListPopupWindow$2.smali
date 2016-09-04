.class Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$2;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$2;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1128
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$2;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 1129
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1130
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$2;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->show()V

    .line 1132
    :cond_0
    return-void
.end method
