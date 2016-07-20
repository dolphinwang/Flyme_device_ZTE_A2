.class public final Lcom/zte/zgesture/data/TaskDescription;
.super Ljava/lang/Object;
.source "TaskDescription.java"


# instance fields
.field public className:Ljava/lang/String;

.field public description:Ljava/lang/CharSequence;

.field public launchIntent:Landroid/content/Intent;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mLabel:Ljava/lang/String;

.field public mLoaded:Z

.field public mThumbnail:Landroid/graphics/Bitmap;

.field public packageName:Ljava/lang/String;

.field public persistentId:I

.field public resolveInfo:Landroid/content/pm/ResolveInfo;

.field public taskId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/zte/zgesture/data/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 85
    iput-object v0, p0, Lcom/zte/zgesture/data/TaskDescription;->launchIntent:Landroid/content/Intent;

    .line 86
    iput v1, p0, Lcom/zte/zgesture/data/TaskDescription;->taskId:I

    .line 87
    iput v1, p0, Lcom/zte/zgesture/data/TaskDescription;->persistentId:I

    .line 89
    iput-object v0, p0, Lcom/zte/zgesture/data/TaskDescription;->description:Ljava/lang/CharSequence;

    .line 90
    iput-object v0, p0, Lcom/zte/zgesture/data/TaskDescription;->packageName:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public constructor <init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "_taskId"    # I
    .param p2, "_persistentId"    # I
    .param p3, "_resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_packageName"    # Ljava/lang/String;
    .param p6, "_className"    # Ljava/lang/String;
    .param p7, "_description"    # Ljava/lang/CharSequence;
    .param p8, "_icon"    # Landroid/graphics/drawable/Drawable;
    .param p9, "label"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p3, p0, Lcom/zte/zgesture/data/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 73
    iput-object p4, p0, Lcom/zte/zgesture/data/TaskDescription;->launchIntent:Landroid/content/Intent;

    .line 74
    iput p1, p0, Lcom/zte/zgesture/data/TaskDescription;->taskId:I

    .line 75
    iput p2, p0, Lcom/zte/zgesture/data/TaskDescription;->persistentId:I

    .line 76
    iput-object p8, p0, Lcom/zte/zgesture/data/TaskDescription;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 77
    iput-object p7, p0, Lcom/zte/zgesture/data/TaskDescription;->description:Ljava/lang/CharSequence;

    .line 78
    iput-object p5, p0, Lcom/zte/zgesture/data/TaskDescription;->packageName:Ljava/lang/String;

    .line 79
    iput-object p6, p0, Lcom/zte/zgesture/data/TaskDescription;->className:Ljava/lang/String;

    .line 80
    iput-object p9, p0, Lcom/zte/zgesture/data/TaskDescription;->mLabel:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static createTaskDescription(ZIILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;)Lcom/zte/zgesture/data/TaskDescription;
    .locals 13
    .param p0, "needIconAndTitle"    # Z
    .param p1, "taskId"    # I
    .param p2, "persistentTaskId"    # I
    .param p3, "baseIntent"    # Landroid/content/Intent;
    .param p4, "origActivity"    # Landroid/content/ComponentName;
    .param p5, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 44
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 45
    .local v5, "intent":Landroid/content/Intent;
    if-eqz p4, :cond_0

    .line 46
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 49
    :cond_0
    invoke-static {}, Lcom/zte/zgesture/GestureService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 50
    .local v12, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x200001

    and-int/2addr v2, v3

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    const/4 v2, 0x0

    invoke-virtual {v12, v5, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 53
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_2

    .line 54
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 55
    .local v11, "info":Landroid/content/pm/ActivityInfo;
    const/4 v10, 0x0

    .line 56
    .local v10, "title":Ljava/lang/String;
    const/4 v9, 0x0

    .line 57
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 58
    if-eqz p0, :cond_1

    .line 59
    invoke-virtual {v11, v12}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 61
    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 62
    new-instance v1, Lcom/zte/zgesture/data/TaskDescription;

    iget-object v6, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v10}, Lcom/zte/zgesture/data/TaskDescription;-><init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 67
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v10    # "title":Ljava/lang/String;
    .end local v11    # "info":Landroid/content/pm/ActivityInfo;
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHomeTask(Landroid/content/Intent;)Z
    .locals 6
    .param p0, "baseIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 30
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 31
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/zte/zgesture/GestureService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 32
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 34
    .local v0, "homeInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    const/4 v3, 0x1

    .line 39
    :cond_0
    return v3
.end method


# virtual methods
.method public compare(Lcom/zte/zgesture/data/TaskDescription;)Z
    .locals 2
    .param p1, "td"    # Lcom/zte/zgesture/data/TaskDescription;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/zte/zgesture/data/TaskDescription;->mLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/zgesture/data/TaskDescription;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zte/zgesture/data/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
