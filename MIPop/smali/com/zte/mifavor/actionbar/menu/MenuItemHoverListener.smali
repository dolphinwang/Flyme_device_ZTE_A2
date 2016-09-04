.class public interface abstract Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;
.super Ljava/lang/Object;
.source "MenuItemHoverListener.java"


# virtual methods
.method public abstract onItemHoverEnter(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .param p1    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onItemHoverExit(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .param p1    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
