.class Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "MainSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/MainSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zgesture/MainSettingActivity$TabsAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragmentTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private final mTabs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/zte/zgesture/MainSettingActivity$TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagsLable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zte/zgesture/MainSettingActivity;


# direct methods
.method public constructor <init>(Lcom/zte/zgesture/MainSettingActivity;Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->this$0:Lcom/zte/zgesture/MainSettingActivity;

    .line 540
    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 530
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->mTabs:Ljava/util/HashMap;

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->mTags:Ljava/util/ArrayList;

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->mTagsLable:Ljava/util/ArrayList;

    .line 537
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->mFragmentTags:Ljava/util/HashSet;

    .line 542
    iput-object p2, p0, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->mContext:Landroid/content/Context;

    .line 543
    iput-object p3, p0, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->mPager:Landroid/support/v4/view/ViewPager;

    .line 545
    iget-object v0, p0, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 546
    return-void
.end method


# virtual methods
.method public addTab(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Class;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p3, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter$TabInfo;

    iget-object v1, p0, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, p0, p3, v1}, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter$TabInfo;-><init>(Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;Ljava/lang/Class;I)V

    .line 550
    .local v0, "info":Lcom/zte/zgesture/MainSettingActivity$TabsAdapter$TabInfo;
    iget-object v1, p0, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v1, p0, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->mTagsLable:Ljava/util/ArrayList;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "label":Ljava/lang/CharSequence;
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v1, p0, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-virtual {p0}, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->notifyDataSetChanged()V

    .line 554
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 558
    iget-object v2, p0, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->mTabs:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter$TabInfo;

    .line 559
    .local v1, "info":Lcom/zte/zgesture/MainSettingActivity$TabsAdapter$TabInfo;
    iget-object v2, p0, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->mContext:Landroid/content/Context;

    # getter for: Lcom/zte/zgesture/MainSettingActivity$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v1}, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter$TabInfo;->access$200(Lcom/zte/zgesture/MainSettingActivity$TabsAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/zte/zgesture/MainSettingActivity$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter$TabInfo;->access$300(Lcom/zte/zgesture/MainSettingActivity$TabsAdapter$TabInfo;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 561
    .local v0, "f":Landroid/app/Fragment;
    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 566
    iget-object v0, p0, Lcom/zte/zgesture/MainSettingActivity$TabsAdapter;->mTagsLable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method
