.class public Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;
.super Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;
.source "MenuPopupWindow.java"

# interfaces
.implements Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuPopupWindow"

.field private static sSetTouchModalMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mHoverListener:Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 55
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "setTouchModal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->sSetTouchModalMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void

    .line 57
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 58
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "MenuPopupWindow"

    const-string v2, "Could not find method setTouchModal() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    return-void
.end method


# virtual methods
.method createDropDownListView(Landroid/content/Context;Z)Lcom/zte/mifavor/actionbar/menu/DropDownListView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    .line 70
    new-instance v0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;

    invoke-direct {v0, p1, p2}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 71
    .local v0, "view":Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;
    invoke-virtual {v0, p0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->setHoverListener(Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;)V

    .line 72
    return-object v0
.end method

.method public onItemHoverEnter(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->mHoverListener:Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->mHoverListener:Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;

    invoke-interface {v0, p1, p2}, Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;->onItemHoverEnter(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onItemHoverExit(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->mHoverListener:Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->mHoverListener:Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;

    invoke-interface {v0, p1, p2}, Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;->onItemHoverExit(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 119
    :cond_0
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 2
    .param p1, "enterTransition"    # Ljava/lang/Object;

    .prologue
    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    .end local p1    # "enterTransition":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 79
    :cond_0
    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 2
    .param p1, "exitTransition"    # Ljava/lang/Object;

    .prologue
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    .end local p1    # "exitTransition":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 85
    :cond_0
    return-void
.end method

.method public setHoverListener(Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;)V
    .locals 0
    .param p1, "hoverListener"    # Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->mHoverListener:Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;

    .line 89
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 6
    .param p1, "touchModal"    # Z

    .prologue
    .line 96
    sget-object v1, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->sSetTouchModalMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 98
    :try_start_0
    sget-object v1, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->sSetTouchModalMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MenuPopupWindow"

    const-string v2, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
