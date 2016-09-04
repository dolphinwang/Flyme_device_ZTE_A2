.class Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$ListSelectorHider;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListSelectorHider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1302
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$ListSelectorHider;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;
    .param p2, "x1"    # Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$1;

    .prologue
    .line 1302
    invoke-direct {p0, p1}, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$ListSelectorHider;-><init>(Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$ListSelectorHider;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->clearListSelection()V

    .line 1305
    return-void
.end method
