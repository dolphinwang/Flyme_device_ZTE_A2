.class public Lcom/zte/mifavor/widget/MenuClicker;
.super Ljava/lang/Object;
.source "MenuClicker.java"

# interfaces
.implements Landroid/widget/ActionMenuView$OnMenuItemClickListener;


# instance fields
.field app:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/zte/mifavor/widget/MenuClicker;->app:Landroid/app/Activity;

    .line 12
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zte/mifavor/widget/MenuClicker;->app:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
