.class Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;
.super Ljava/lang/Object;
.source "AppSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/setting/AppSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppItem"
.end annotation


# instance fields
.field appIcon:Landroid/graphics/drawable/Drawable;

.field appName:Ljava/lang/String;

.field launchIntent:Landroid/content/Intent;

.field pkgName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/zgesture/setting/AppSelectActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/zgesture/setting/AppSelectActivity$1;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;-><init>()V

    return-void
.end method
