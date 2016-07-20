.class Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AppSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field appImage:Landroid/widget/ImageView;

.field appName:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;


# direct methods
.method private constructor <init>(Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter$ViewHolder;->this$1:Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;Lcom/zte/zgesture/setting/AppSelectActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;
    .param p2, "x1"    # Lcom/zte/zgesture/setting/AppSelectActivity$1;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter$ViewHolder;-><init>(Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;)V

    return-void
.end method
