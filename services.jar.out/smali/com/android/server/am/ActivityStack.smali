.class final Lcom/android/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$1;,
        Lcom/android/server/am/ActivityStack$myThread;,
        Lcom/android/server/am/ActivityStack$ActivityStackHandler;,
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/am/ActivityStack$ActivityState;
    }
.end annotation


# static fields
.field static final ACTIVITY_INACTIVE_RESET_TIME:J = 0x0L

.field static final BOOST_ENABLE_TIMEOUT:I = 0x7d0

.field static final DESTROY_ACTIVITIES_MSG:I = 0x69

.field static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x66

.field static final FINISH_AFTER_PAUSE:I = 0x1

.field static final FINISH_AFTER_VISIBLE:I = 0x2

.field static final FINISH_FROM_CLEARTASK:I = 0x3

.field static final FINISH_IMMEDIATELY:I = 0x0

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x67

.field static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field static final RELEASE_BACKGROUND_RESOURCES_TIMEOUT_MSG:I = 0x6b

.field static final SCREENSHOT_FORCE_565:Z

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final START_WARN_TIME:J = 0x1388L

.field static final STOP_TIMEOUT:I = 0x2710

.field static final STOP_TIMEOUT_MSG:I = 0x68

.field static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field static final TRANSLUCENT_TIMEOUT_MSG:I = 0x6a


# instance fields
.field final mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

.field mAnimationOptions:Landroid/os/Bundle;

.field mAnimationPrev:Lcom/android/server/am/ActivityRecord;

.field mConfigWillChange:Z

.field mCurrentUser:I

.field mDidResume:Z

.field mDisplayId:I

.field private final mEnhancedBoost:Z

.field mFullyDrawnStartTime:J

.field final mHandler:Landroid/os/Handler;

.field final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

.field mLaunchStartTime:J

.field mNeedKeepFocusActivity:Z

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStackId:I

.field mStackListener:Lcom/android/server/am/ActivityStackListener;

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

.field private mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mValidateAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->SCREENSHOT_FORCE_565:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;)V
    .locals 6
    .param p1, "activityContainer"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 195
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 202
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 209
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 214
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 221
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

    .line 229
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 239
    iput-wide v4, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    .line 240
    iput-wide v4, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    .line 263
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mDidResume:Z

    .line 267
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    .line 268
    const-string v0, "1"

    const-string v1, "ro.mtk_perf_response_time"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mEnhancedBoost:Z

    .line 4844
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mNeedKeepFocusActivity:Z

    .line 378
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 379
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->getOuter()Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 380
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 381
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 382
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 383
    iget v0, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 384
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 385
    return-void
.end method

.method private adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2907
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_1

    .line 2908
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2909
    .local v0, "next":Lcom/android/server/am/ActivityRecord;
    if-eq v0, p1, :cond_0

    .line 2910
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2911
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-ne v1, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2913
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2914
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " adjustFocus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)V

    .line 2919
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 2920
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1

    .line 2921
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adjustTopFocus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 2924
    .end local v0    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method

.method private completePauseLocked(Z)V
    .locals 12
    .param p1, "resumeNext"    # Z

    .prologue
    .line 1077
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1078
    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    sget-boolean v7, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-eqz v7, :cond_0

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Complete pause: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_0
    if-eqz v1, :cond_3

    .line 1081
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v7, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1082
    iget-boolean v7, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_8

    .line 1083
    sget-boolean v7, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-eqz v7, :cond_1

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Executing finish of activity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_1
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {p0, v1, v7, v8}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1125
    :cond_2
    :goto_0
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1128
    :cond_3
    if-eqz p1, :cond_4

    .line 1129
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 1130
    .local v6, "topStack":Lcom/android/server/am/ActivityStack;
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v7

    if-nez v7, :cond_13

    .line 1131
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v1, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 1146
    .end local v6    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_4
    :goto_1
    if-eqz v1, :cond_7

    .line 1149
    const-string v7, "ActivityManager"

    const-string v8, "Delay resumeKeyDispatchingLocked() to avoid deadlock."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    new-instance v7, Lcom/android/server/am/ActivityStack$myThread;

    invoke-direct {v7, p0, v1}, Lcom/android/server/am/ActivityStack$myThread;-><init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack$myThread;->start()V

    .line 1153
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_6

    iget-wide v8, v1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_6

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1155
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v7, v8}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v8

    iget-wide v10, v1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long v2, v8, v10

    .line 1157
    .local v2, "diff":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_6

    .line 1158
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .line 1159
    .local v0, "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v0

    .line 1160
    :try_start_0
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v4

    .line 1163
    .local v4, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v4, :cond_5

    .line 1164
    invoke-virtual {v4, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 1166
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1169
    .end local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v2    # "diff":J
    .end local v4    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_6
    const-wide/16 v8, 0x0

    iput-wide v8, v1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1173
    :cond_7
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->notifyTaskStackChangedLocked()V

    .line 1174
    return-void

    .line 1085
    :cond_8
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_11

    .line 1086
    sget-boolean v7, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-eqz v7, :cond_9

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Enqueueing pending stop: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_9
    iget-boolean v7, v1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v7, :cond_b

    .line 1088
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 1089
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1090
    sget-boolean v7, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-nez v7, :cond_a

    sget-boolean v7, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-eqz v7, :cond_b

    :cond_a
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Complete pause, no longer waiting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_b
    iget-boolean v7, v1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v7, :cond_d

    .line 1099
    sget-boolean v7, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-eqz v7, :cond_c

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Destroying after pause: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_c
    const/4 v7, 0x1

    const-string v8, "pause-config"

    invoke-virtual {p0, v1, v7, v8}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    goto/16 :goto_0

    .line 1101
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1104
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    if-gt v7, v8, :cond_e

    iget-boolean v7, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_10

    .line 1111
    :cond_e
    sget-boolean v7, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-eqz v7, :cond_f

    const-string v7, "ActivityManager"

    const-string v8, "To many pending stops, forcing idle"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_f
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 1114
    sget-boolean v7, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v7, :cond_2

    .line 1115
    const-string v7, "ActivityManager"

    const-string v8, "ACT-IDLE_NOW_MSG from completePauseLocked for mStoppingActivities.size() > 3"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1118
    :cond_10
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    goto/16 :goto_0

    .line 1122
    :cond_11
    sget-boolean v7, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-eqz v7, :cond_12

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App died during pause, not stopping: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1133
    .restart local v6    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_13
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 1134
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1135
    .local v5, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_14

    if-eqz v1, :cond_4

    if-eq v5, v1, :cond_4

    .line 1141
    :cond_14
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    goto/16 :goto_1

    .line 1166
    .end local v5    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "topStack":Lcom/android/server/am/ActivityStack;
    .restart local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v2    # "diff":J
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method private completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const-wide/16 v6, 0x40

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1182
    const-string v1, "amCompleteResume"

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1184
    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 1185
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1186
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1188
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1190
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v1, :cond_0

    .line 1191
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 1195
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v1, :cond_1

    .line 1197
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    .line 1201
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1203
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1206
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1208
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "completeResume"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 1213
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1214
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1219
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_4

    .line 1220
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1225
    :goto_0
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 1227
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p1, :cond_3

    .line 1229
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 1231
    :cond_3
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1232
    return-void

    .line 1222
    :cond_4
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_0
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;)V
    .locals 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2233
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2234
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2235
    .local v2, "lastStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v1

    .line 2238
    .local v1, "fromHome":Z
    sget-boolean v8, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASK_RETURNTO:Z

    if-eqz v8, :cond_0

    .line 2239
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insertTaskAtTop() task "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " fromHome="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isHomeStack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " topTask="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    if-eqz v2, :cond_0

    .line 2242
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 2243
    .local v5, "top":Lcom/android/server/am/TaskRecord;
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastStack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "lastTop="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    if-eqz v5, :cond_0

    .line 2245
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastTopType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    .end local v5    # "top":Lcom/android/server/am/TaskRecord;
    :cond_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2254
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BMW] insertTaskAtTop fromHome = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " lastStack = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " this = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " topTask() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2259
    :cond_1
    iput-boolean v7, p1, Lcom/android/server/am/TaskRecord;->mFloatingBackIsHome:Z

    .line 2264
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2265
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getAppStackLocked()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2266
    .local v0, "appStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_3

    .line 2267
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 2268
    .local v3, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_c

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v9, :cond_c

    .line 2270
    iput-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mFloatingBackIsHome:Z

    .line 2277
    .end local v0    # "appStack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_3
    :goto_0
    iget-boolean v8, p1, Lcom/android/server/am/TaskRecord;->mFloatingBackIsHome:Z

    if-eqz v8, :cond_4

    .line 2278
    const/4 v1, 0x1

    .line 2283
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v8

    if-nez v8, :cond_7

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    if-eq v8, p1, :cond_7

    .line 2284
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-nez v6, :cond_d

    move v6, v7

    :cond_6
    :goto_1
    invoke-virtual {p1, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 2290
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2291
    iget-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mFloatingBackIsHome:Z

    if-eqz v6, :cond_7

    .line 2292
    invoke-virtual {p1, v7}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 2301
    .end local v1    # "fromHome":Z
    .end local v2    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2303
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2304
    .local v4, "taskNdx":I
    iget v6, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v6}, Lcom/android/server/am/ActivityStack;->isCurrentProfileLocked(I)Z

    move-result v6

    if-nez v6, :cond_a

    .line 2306
    :cond_8
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_9

    .line 2307
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v6}, Lcom/android/server/am/ActivityStack;->isCurrentProfileLocked(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 2311
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 2313
    :cond_a
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2314
    invoke-virtual {p0, p1, v7}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 2316
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 2318
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v6

    iget v7, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v6, v7}, Lcom/mediatek/multiwindow/MultiWindowProxy;->taskAdded(I)V

    .line 2321
    :cond_b
    return-void

    .line 2272
    .end local v4    # "taskNdx":I
    .restart local v0    # "appStack":Lcom/android/server/am/ActivityStack;
    .restart local v1    # "fromHome":Z
    .restart local v2    # "lastStack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_c
    iput-boolean v7, p1, Lcom/android/server/am/TaskRecord;->mFloatingBackIsHome:Z

    goto :goto_0

    .line 2284
    .end local v0    # "appStack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_d
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskType:I

    goto :goto_1

    .line 2298
    .end local v1    # "fromHome":Z
    .end local v2    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_e
    invoke-virtual {p1, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_2
.end method

.method private isCurrentProfileLocked(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 391
    iget v2, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    if-ne p1, v2, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v1

    .line 392
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 393
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_0

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 395
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isStackVisible()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1292
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v8

    .line 1327
    :goto_0
    return v7

    .line 1296
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v9

    .line 1297
    goto :goto_0

    .line 1305
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 1306
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 1307
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v5, 0x0

    .local v5, "taskNdx":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_5

    .line 1308
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1309
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1310
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v1, 0x0

    .local v1, "activityNdx":I
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 1311
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1319
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_3

    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v7, :cond_3

    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v7

    if-nez v7, :cond_3

    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v7, v8

    .line 1321
    goto :goto_0

    .line 1310
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1307
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1305
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v5    # "taskNdx":I
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_6
    move v7, v9

    .line 1327
    goto :goto_0
.end method

.method static final logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p0, "tag"    # I
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 4262
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 4263
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    .line 4265
    .local v1, "strData":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4269
    return-void

    .line 4263
    .end local v1    # "strData":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private perfBoostResume()V
    .locals 4

    .prologue
    .line 4884
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    if-nez v0, :cond_0

    .line 4885
    new-instance v0, Lcom/mediatek/perfservice/PerfServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    .line 4888
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    if-eqz v0, :cond_2

    .line 4889
    const-wide/16 v0, 0x40

    const-string v2, "amPerfBoost"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 4890
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_PERFSRV:Z

    if-eqz v0, :cond_1

    .line 4891
    const-string v0, "ActivityManager"

    const-string v1, "boostEnableTimeoutMs(1) cross app"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4894
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    const/4 v1, 0x1

    const/16 v2, 0x7d0

    invoke-interface {v0, v1, v2}, Lcom/mediatek/perfservice/IPerfServiceWrapper;->boostEnableTimeoutMs(II)V

    .line 4899
    :goto_0
    return-void

    .line 4897
    :cond_2
    const-string v0, "ActivityManager"

    const-string v1, "PerfService is not ready!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "changes"    # I
    .param p3, "andResume"    # Z

    .prologue
    .line 4406
    const/4 v1, 0x0

    .line 4407
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v2, 0x0

    .line 4408
    .local v2, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz p3, :cond_0

    .line 4409
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4410
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 4412
    :cond_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Relaunching: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with results="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newIntents="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " andResume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4416
    :cond_1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v0, :cond_2

    .line 4417
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACT-Relaunching: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with results="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newIntents="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " andResume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4421
    :cond_2
    if-eqz p3, :cond_6

    const/16 v0, 0x7543

    :goto_0
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4425
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 4427
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V

    .line 4430
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v0, :cond_4

    :cond_3
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_7

    const-string v0, "Relaunching to RESUMED "

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4433
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 4437
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->mPendingRestoreMax:Z

    if-eqz v0, :cond_a

    .line 4438
    if-nez p3, :cond_8

    const/4 v4, 0x1

    :goto_2
    new-instance v5, Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v5, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v6, 0x1

    :goto_3
    move-object v0, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityRecord;->scheduleRestoreActivity(Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4451
    :cond_5
    :goto_4
    if-eqz p3, :cond_d

    .line 4452
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4453
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 4454
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4460
    :goto_5
    const/4 v0, 0x1

    return v0

    .line 4421
    :cond_6
    const/16 v0, 0x7544

    goto/16 :goto_0

    .line 4430
    :cond_7
    :try_start_1
    const-string v0, "Relaunching to PAUSED "

    goto :goto_1

    .line 4438
    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    .line 4441
    :cond_a
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-nez p3, :cond_c

    const/4 v8, 0x1

    :goto_6
    new-instance v9, Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v9, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v5, v1

    move-object v6, v2

    move v7, p2

    invoke-interface/range {v3 .. v9}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 4447
    :catch_0
    move-exception v10

    .line 4448
    .local v10, "e":Landroid/os/RemoteException;
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v0, :cond_5

    :cond_b
    const-string v0, "ActivityManager"

    const-string v3, "Relaunch failed"

    invoke-static {v0, v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 4441
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_c
    const/4 v8, 0x0

    goto :goto_6

    .line 4456
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4457
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_5
.end method

.method private removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 3515
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V

    .line 3516
    invoke-virtual {p0, p1, v10, v11}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 3517
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 3518
    sget-boolean v7, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_ADD_REMOVE:Z

    if-eqz v7, :cond_0

    .line 3519
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v7, "here"

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3520
    .local v1, "here":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 3521
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from stack"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    .end local v1    # "here":Ljava/lang/RuntimeException;
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 3524
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3525
    sget-boolean v7, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v7, :cond_1

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Moving to DESTROYED: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (removed from history)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    :cond_1
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3527
    sget-boolean v7, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_APP:Z

    if-eqz v7, :cond_2

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Clearing app during remove for activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    :cond_2
    iput-object v11, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3529
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->removeAppToken(Landroid/os/IBinder;)V

    .line 3533
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3534
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_a

    invoke-virtual {v6, p1}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3535
    sget-boolean v7, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v7, :cond_3

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeActivityFromHistoryLocked: last activity removed from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-ne v6, v7, :cond_9

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3540
    const/4 v4, 0x1

    .line 3541
    .local v4, "needResumeHome":Z
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3543
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getAppStackLocked()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3544
    .local v0, "appStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_4

    .line 3546
    const-string v7, "ActivityManager"

    const-string v8, "[BMW] ACT-removeActivityFromHistoryLocked : needResumeHome = false"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    const/4 v4, 0x0

    .line 3549
    :cond_4
    const/4 v2, 0x0

    .line 3550
    .local v2, "homeStack":Lcom/android/server/am/ActivityStack;
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 3551
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3552
    move-object v2, v5

    .line 3557
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_7

    .line 3560
    const-string v7, "ActivityManager"

    const-string v8, "[BMW] ACT-removeActivityFromHistoryLocked RecentsActivity : needResumeHome = false"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    const/4 v4, 0x0

    .line 3565
    .end local v0    # "appStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "homeStack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    if-eqz v4, :cond_8

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v8

    invoke-virtual {v7, v8, p0}, Lcom/android/server/am/ActivityStackSupervisor;->moveNextFloatingStackToTopLocked(ILcom/android/server/am/ActivityStack;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 3567
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v8

    invoke-virtual {v7, v8, p2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)V

    .line 3572
    :cond_8
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3573
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v10, v10}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3578
    .end local v4    # "needResumeHome":Z
    :cond_9
    invoke-virtual {p0, v6, p2}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 3580
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3581
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    .line 3582
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 5
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3883
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3884
    .local v0, "i":I
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->DEBUG_CLEANUP:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3887
    :cond_0
    :goto_0
    if-lez v0, :cond_3

    .line 3888
    add-int/lit8 v0, v0, -0x1

    .line 3889
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3890
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->DEBUG_CLEANUP:Z

    if-eqz v2, :cond_1

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p2, :cond_0

    .line 3892
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->DEBUG_CLEANUP:Z

    if-eqz v2, :cond_2

    const-string v2, "ActivityManager"

    const-string v3, "---> REMOVING this entry!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3893
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3894
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 3897
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    return-void
.end method

.method private removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3507
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3508
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3509
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3510
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3511
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 3512
    return-void
.end method

.method private resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I
    .locals 24
    .param p1, "affinityTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "topTaskIsHigher"    # Z
    .param p4, "forceReset"    # Z
    .param p5, "taskInsertionPoint"    # I

    .prologue
    .line 2712
    const/4 v15, -0x1

    .line 2713
    .local v15, "replyChainEnd":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    .line 2714
    .local v23, "taskId":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2716
    .local v22, "taskAffinity":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2717
    .local v8, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2718
    .local v14, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v16

    .line 2721
    .local v16, "rootActivityNdx":I
    add-int/lit8 v13, v14, -0x1

    .local v13, "i":I
    :goto_0
    move/from16 v0, v16

    if-le v13, v0, :cond_0

    .line 2722
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/ActivityRecord;

    .line 2723
    .local v19, "target":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_1

    .line 2824
    .end local v19    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return p5

    .line 2726
    .restart local v19    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_1
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2727
    .local v12, "flags":I
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_3

    const/4 v11, 0x1

    .line 2728
    .local v11, "finishOnTaskLaunch":Z
    :goto_1
    and-int/lit8 v2, v12, 0x40

    if-eqz v2, :cond_4

    const/4 v10, 0x1

    .line 2730
    .local v10, "allowTaskReparenting":Z
    :goto_2
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_5

    .line 2737
    if-gez v15, :cond_2

    .line 2738
    move v15, v13

    .line 2721
    :cond_2
    :goto_3
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 2727
    .end local v10    # "allowTaskReparenting":Z
    .end local v11    # "finishOnTaskLaunch":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 2728
    .restart local v11    # "finishOnTaskLaunch":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 2740
    .restart local v10    # "allowTaskReparenting":Z
    :cond_5
    if-eqz p3, :cond_2

    if-eqz v10, :cond_2

    if-eqz v22, :cond_2

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2754
    if-nez p4, :cond_6

    if-eqz v11, :cond_a

    .line 2755
    :cond_6
    if-ltz v15, :cond_8

    move/from16 v18, v15

    .line 2756
    .local v18, "start":I
    :goto_4
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v2, :cond_7

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finishing task at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    :cond_7
    move/from16 v17, v18

    .local v17, "srcPos":I
    :goto_5
    move/from16 v0, v17

    if-lt v0, v13, :cond_12

    .line 2758
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2759
    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_9

    .line 2757
    :goto_6
    add-int/lit8 v17, v17, -0x1

    goto :goto_5

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v17    # "srcPos":I
    .end local v18    # "start":I
    :cond_8
    move/from16 v18, v13

    .line 2755
    goto :goto_4

    .line 2762
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v17    # "srcPos":I
    .restart local v18    # "start":I
    :cond_9
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "reset"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_6

    .line 2765
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v17    # "srcPos":I
    .end local v18    # "start":I
    :cond_a
    if-gez p5, :cond_b

    .line 2766
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p5

    .line 2771
    :cond_b
    if-ltz v15, :cond_10

    move/from16 v18, v15

    .line 2772
    .restart local v18    # "start":I
    :goto_7
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v2, :cond_c

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reparenting from task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    :cond_c
    move/from16 v9, p5

    .line 2776
    .local v9, "addTaskPosition":I
    move/from16 v17, v13

    .restart local v17    # "srcPos":I
    :goto_8
    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_11

    .line 2778
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2779
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2781
    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v3}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 2782
    add-int/lit8 v9, v9, 0x1

    .line 2783
    add-int/lit8 v18, v18, -0x1

    .line 2784
    add-int/lit8 v17, v17, -0x1

    .line 2787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v2, :cond_d

    .line 2788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Ljava/util/ArrayList;)V

    .line 2792
    :cond_d
    sget-boolean v2, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_ADD_REMOVE:Z

    if-eqz v2, :cond_e

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing and adding activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to stack at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "here"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2795
    :cond_e
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v2, :cond_f

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pulling activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in to resetting task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v23

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 2776
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_8

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "addTaskPosition":I
    .end local v17    # "srcPos":I
    .end local v18    # "start":I
    :cond_10
    move/from16 v18, v13

    .line 2771
    goto/16 :goto_7

    .line 2799
    .restart local v9    # "addTaskPosition":I
    .restart local v17    # "srcPos":I
    .restart local v18    # "start":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 2808
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    .line 2809
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    .line 2810
    .local v21, "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v20

    .line 2811
    .local v20, "targetNdx":I
    if-lez v20, :cond_12

    .line 2812
    add-int/lit8 v2, v20, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2813
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2814
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "replace"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2821
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "addTaskPosition":I
    .end local v20    # "targetNdx":I
    .end local v21    # "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_12
    const/4 v15, -0x1

    goto/16 :goto_3
.end method

.method private setVisibile(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "visible"    # Z

    .prologue
    .line 1235
    iput-boolean p2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1236
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1237
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    .line 1238
    .local v2, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "containerNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1239
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 1240
    .local v0, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setVisible(Z)V

    .line 1238
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1242
    .end local v0    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_0
    return-void
.end method

.method private skipStartActivityInEnsureVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 5
    .param p1, "top"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "cur"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1334
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mHaltActivity:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->checkIfBlockResumeTop(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 1338
    .local v0, "realHaltActivity":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1339
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityManager"

    const-string v3, "Skip by halt activity"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :cond_0
    :goto_1
    return v1

    .end local v0    # "realHaltActivity":Z
    :cond_1
    move v0, v2

    .line 1334
    goto :goto_0

    .line 1344
    .restart local v0    # "realHaltActivity":Z
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    iget v4, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1345
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip by not existing user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1350
    :cond_3
    invoke-static {}, Lcom/android/server/am/PowerOffAlarmUtility;->isAlarmBoot()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1351
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityManager"

    const-string v3, "Skip by alarm boot"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v1, v2

    .line 1356
    goto :goto_1
.end method

.method private startLaunchTraces()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x40

    const/4 v4, 0x0

    .line 743
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 744
    const-string v0, "drawing"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 746
    :cond_0
    const-string v0, "launching"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 747
    const-string v0, "drawing"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 748
    return-void
.end method

.method private stopFullyDrawnTraceIfNeeded()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 751
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 752
    const-wide/16 v0, 0x40

    const-string v2, "drawing"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 753
    iput-wide v4, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    .line 755
    :cond_0
    return-void
.end method


# virtual methods
.method final activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3811
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3813
    .local v0, "origId":J
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3814
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 3815
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3817
    :cond_0
    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_CONTAINERS:Z

    if-eqz v3, :cond_1

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activityDestroyedLocked: r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3820
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_2

    .line 3821
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3822
    invoke-direct {p0, v2, p2}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3825
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3827
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3829
    return-void

    .line 3827
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method final activityPausedLocked(Landroid/os/IBinder;Z)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z

    .prologue
    const/4 v5, 0x1

    .line 993
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity paused: token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v1, :cond_1

    .line 997
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACT-paused: token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1001
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_5

    .line 1002
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1003
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, v0, :cond_7

    .line 1004
    sget-boolean v1, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v1, :cond_2

    const-string v2, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moving to PAUSED: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_6

    const-string v1, " (due to timeout)"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Z)V

    .line 1018
    :cond_3
    :goto_1
    const-string v1, "ro.mtk_benchmark_boost_tp"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1019
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mThermalManager:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;->Paused:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->notifyAppState(Ljava/lang/String;Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;)V

    .line 1020
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->DEBUG_THERMAL:Z

    if-eqz v1, :cond_4

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify Thermal Manager that Package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is paused"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getFocusAppPid()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->Paused:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->notifyActivityState(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/am/IActivityStateNotifier$ActivityState;)V

    .line 1029
    :cond_5
    return-void

    .line 1004
    :cond_6
    const-string v1, " (pause complete)"

    goto :goto_0

    .line 1008
    :cond_7
    const/16 v2, 0x753c

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    const/4 v1, 0x2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_2
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1013
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v1, :cond_3

    .line 1014
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACT-AM_FAILED_TO_PAUSE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PausingActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1008
    :cond_8
    const-string v1, "(none)"

    goto :goto_2
.end method

.method final activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "icicle"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;
    .param p4, "description"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v7, 0x68

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1034
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getFocusAppPid()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->Stopped:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->notifyActivityState(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/am/IActivityStateNotifier$ActivityState;)V

    .line 1037
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_1

    .line 1038
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    if-eqz p3, :cond_2

    .line 1043
    iput-object p3, p1, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 1044
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1046
    :cond_2
    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_SAVED_STATE:Z

    if-eqz v0, :cond_3

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving icicle of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_3
    if-eqz p2, :cond_4

    .line 1050
    iput-object p2, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 1051
    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 1052
    iput v5, p1, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 1053
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p4}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 1055
    :cond_4
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v0, :cond_0

    .line 1056
    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v0, :cond_5

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving to STOPPED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (stop complete)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1058
    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 1059
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1060
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_6

    .line 1061
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1, v5}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    .line 1063
    :cond_6
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_7

    .line 1064
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto/16 :goto_0

    .line 1066
    :cond_7
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v0, :cond_8

    .line 1067
    const-string v0, "stop-config"

    invoke-virtual {p0, p1, v6, v0}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 1068
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto/16 :goto_0

    .line 1070
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0
.end method

.method addTask(Lcom/android/server/am/TaskRecord;ZZ)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toTop"    # Z
    .param p3, "moving"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4796
    iput-object p0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 4797
    if-eqz p2, :cond_2

    .line 4798
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;)V

    .line 4803
    :goto_0
    if-nez p3, :cond_0

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_0

    .line 4805
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v0, v1, v2}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4810
    :cond_0
    :goto_1
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4812
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v0

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->taskAdded(I)V

    .line 4815
    :cond_1
    return-void

    .line 4800
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4801
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    goto :goto_0

    .line 4806
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method awakeFromSleepingLocked()V
    .locals 5

    .prologue
    .line 782
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 783
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 784
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_0

    .line 785
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 784
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 782
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 788
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2

    .line 789
    const-string v3, "ActivityManager"

    const-string v4, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 792
    :cond_2
    return-void
.end method

.method final backgroundResourcesReleased()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3857
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3858
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3859
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 3860
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3861
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 3862
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3864
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 3865
    return-void
.end method

.method cancelInitializingActivities()V
    .locals 9

    .prologue
    .line 1602
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1603
    .local v5, "topActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x1

    .line 1604
    .local v0, "aboveTop":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_4

    .line 1605
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1606
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_3

    .line 1607
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1608
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    .line 1609
    if-ne v3, v5, :cond_0

    .line 1610
    const/4 v0, 0x0

    .line 1606
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1615
    :cond_1
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_0

    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    if-eqz v6, :cond_0

    .line 1616
    sget-boolean v6, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    if-eqz v6, :cond_2

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found orphaned starting window "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    .line 1618
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->removeAppStartingWindow(Landroid/os/IBinder;)V

    goto :goto_2

    .line 1604
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1622
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_4
    return-void
.end method

.method checkReadyForSleepLocked()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 798
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_3

    .line 800
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sleep needs to pause "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_0
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->DEBUG_USER_LEAVING:Z

    if-eqz v2, :cond_1

    const-string v2, "ActivityManager"

    const-string v3, "Sleep => pause with userLeaving=false"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_1
    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    .line 811
    :cond_2
    :goto_0
    return v0

    .line 805
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_4

    .line 807
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_2

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleep still waiting to pause "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 811
    goto :goto_0
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "cleanServices"    # Z
    .param p3, "setState"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 3457
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_0

    .line 3458
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3460
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_1

    .line 3461
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 3465
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mNeedKeepFocusActivity:Z

    if-nez v3, :cond_2

    .line 3466
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService;->clearFocusedActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 3468
    :cond_2
    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 3469
    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 3471
    if-eqz p3, :cond_5

    .line 3472
    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v3, :cond_3

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moving to DESTROYED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (cleaning up)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    :cond_3
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3474
    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_APP:Z

    if-eqz v3, :cond_4

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing app during cleanUp for activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3475
    :cond_4
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3481
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3482
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3485
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_8

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v3, :cond_8

    .line 3486
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 3487
    .local v0, "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 3488
    .local v2, "rec":Lcom/android/server/am/PendingIntentRecord;
    if-eqz v2, :cond_6

    .line 3489
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v6}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    goto :goto_0

    .line 3492
    .end local v0    # "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v2    # "rec":Lcom/android/server/am/PendingIntentRecord;
    :cond_7
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 3495
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_8
    if-eqz p2, :cond_9

    .line 3496
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3500
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3501
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-ne v3, p1, :cond_a

    .line 3502
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    .line 3504
    :cond_a
    return-void
.end method

.method final cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 3589
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    .line 3590
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3591
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3592
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 3593
    .local v0, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 3595
    .end local v0    # "c":Lcom/android/server/am/ConnectionRecord;
    :cond_0
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 3597
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_1
    return-void
.end method

.method clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    .line 778
    :goto_0
    return-void

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 776
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0
.end method

.method closeSystemDialogsLocked()V
    .locals 9

    .prologue
    .line 4486
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "taskNdx":I
    :goto_0
    if-ltz v8, :cond_2

    .line 4487
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4488
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "activityNdx":I
    :goto_1
    if-ltz v7, :cond_1

    .line 4489
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4490
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 4491
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "close-sys"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4488
    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 4486
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 4495
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    :cond_2
    return-void
.end method

.method convertToTranslucent(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1560
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 1561
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1562
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1563
    return-void
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;
    .locals 7
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p6, "toTop"    # Z

    .prologue
    .line 4785
    new-instance v0, Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 4787
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p6, v1}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 4788
    return-object v0
.end method

.method final destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 9
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3606
    const/4 v3, 0x0

    .line 3607
    .local v3, "lastIsOpaque":Z
    const/4 v2, 0x0

    .line 3608
    .local v2, "activityRemoved":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "taskNdx":I
    :goto_0
    if-ltz v5, :cond_6

    .line 3609
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3610
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_5

    .line 3611
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3612
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_1

    .line 3610
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3615
    :cond_1
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_2

    .line 3616
    const/4 v3, 0x1

    .line 3618
    :cond_2
    if-eqz p1, :cond_3

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, p1, :cond_0

    .line 3621
    :cond_3
    if-eqz v3, :cond_0

    .line 3624
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3625
    sget-boolean v6, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-eqz v6, :cond_4

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Destroying "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resumed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pausing="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for reason "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    :cond_4
    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3629
    const/4 v2, 0x1

    goto :goto_2

    .line 3608
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .line 3634
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_6
    if-eqz v2, :cond_7

    .line 3635
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 3637
    :cond_7
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "removeFromApp"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 3700
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_CLEANUP:Z

    if-eqz v5, :cond_1

    :cond_0
    const-string v7, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing activity from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": token="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", app="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_a

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    :cond_1
    const/16 v5, 0x7542

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p3, v7, v8

    invoke-static {v5, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3707
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v5, :cond_2

    .line 3708
    const-string v7, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACT-Removing activity from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": token="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", app="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_b

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3713
    :cond_2
    const-string v5, "ro.mtk_benchmark_boost_tp"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3714
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mThermalManager:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    sget-object v8, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;->Destroyed:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    invoke-virtual {v5, v7, v8}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->notifyAppState(Ljava/lang/String;Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;)V

    .line 3715
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_THERMAL:Z

    if-eqz v5, :cond_3

    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notify Thermal Manager that package = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "will be destroyed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3721
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getFocusAppPid()I

    move-result v8

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->Destroyed:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->notifyActivityState(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/am/IActivityStateNotifier$ActivityState;)V

    .line 3725
    const/4 v3, 0x0

    .line 3727
    .local v3, "removedFromHistory":Z
    invoke-virtual {p0, p1, v6, v6}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3729
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_c

    .line 3731
    .local v1, "hadApp":Z
    :goto_2
    if-eqz v1, :cond_10

    .line 3732
    if-eqz p2, :cond_5

    .line 3733
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3734
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v5, v7, :cond_4

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_4

    .line 3735
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v11, v5, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 3736
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0x19

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessage(I)Z

    .line 3739
    :cond_4
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3742
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3744
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v7, v6, v11}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 3745
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3749
    :cond_5
    const/4 v4, 0x0

    .line 3752
    .local v4, "skipDestroy":Z
    :try_start_0
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-eqz v5, :cond_6

    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Destroying: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    :cond_6
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v5, v7, v8, v9}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3767
    :cond_7
    :goto_3
    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 3776
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_d

    if-nez v4, :cond_d

    .line 3777
    sget-boolean v5, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v5, :cond_8

    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Moving to DESTROYING: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (destroy requested)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    :cond_8
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3780
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x66

    invoke-virtual {v5, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3781
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x2710

    invoke-virtual {v5, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3801
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "skipDestroy":Z
    :goto_4
    iput v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 3803
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    if-eqz v1, :cond_9

    .line 3804
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " being finished, but not in LRU list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3807
    :cond_9
    return v3

    .line 3700
    .end local v1    # "hadApp":Z
    .end local v3    # "removedFromHistory":Z
    :cond_a
    const-string v5, "(null)"

    goto/16 :goto_0

    .line 3708
    :cond_b
    const-string v5, "(null)"

    goto/16 :goto_1

    .restart local v3    # "removedFromHistory":Z
    :cond_c
    move v1, v6

    .line 3729
    goto/16 :goto_2

    .line 3755
    .restart local v1    # "hadApp":Z
    .restart local v4    # "skipDestroy":Z
    :catch_0
    move-exception v0

    .line 3760
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_7

    .line 3761
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " exceptionInScheduleDestroy"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3762
    const/4 v3, 0x1

    .line 3763
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 3783
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d
    sget-boolean v5, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v5, :cond_e

    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Moving to DESTROYED: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (destroy skipped)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3784
    :cond_e
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3785
    sget-boolean v5, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_APP:Z

    if-eqz v5, :cond_f

    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Clearing app during destroy for activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    :cond_f
    iput-object v11, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto/16 :goto_4

    .line 3790
    .end local v4    # "skipDestroy":Z
    :cond_10
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_11

    .line 3791
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " hadNoApp"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3792
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 3794
    :cond_11
    sget-boolean v5, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v5, :cond_12

    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Moving to DESTROYED: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (no app)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3795
    :cond_12
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3796
    sget-boolean v5, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_APP:Z

    if-eqz v5, :cond_13

    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Clearing app during destroy for activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    :cond_13
    iput-object v11, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto/16 :goto_4
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z
    .locals 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z
    .param p7, "header"    # Ljava/lang/String;

    .prologue
    .line 4650
    const/4 v12, 0x0

    .line 4651
    .local v12, "printed":Z
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v14, v0, -0x1

    .local v14, "taskNdx":I
    :goto_0
    if-ltz v14, :cond_2

    .line 4652
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    .line 4653
    .local v13, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const-string v3, "    "

    const-string v4, "Hist"

    const/4 v5, 0x1

    if-nez p3, :cond_1

    const/4 v6, 0x1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Task id #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v12, v0

    .line 4657
    if-eqz v12, :cond_0

    .line 4658
    const/16 p7, 0x0

    .line 4651
    :cond_0
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 4653
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 4661
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    return v12
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 12
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    .prologue
    .line 1365
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 1366
    .local v8, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v8, :cond_1

    .line 1557
    :cond_0
    :goto_0
    return-void

    .line 1369
    :cond_1
    sget-boolean v9, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    if-eqz v9, :cond_2

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ensureActivitiesVisible behind "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " configChanges=0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :cond_2
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eq v9, v8, :cond_4

    .line 1374
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1375
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v9, :cond_3

    .line 1377
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1378
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 1380
    :cond_3
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x6a

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1385
    :cond_4
    const/4 v0, 0x1

    .line 1386
    .local v0, "aboveTop":Z
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->isStackVisible()Z

    move-result v9

    if-nez v9, :cond_7

    const/4 v3, 0x1

    .line 1388
    .local v3, "behindFullscreen":Z
    :goto_1
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v9, :cond_5

    .line 1390
    const/4 v3, 0x0

    .line 1393
    :cond_5
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .local v7, "taskNdx":I
    :goto_2
    if-ltz v7, :cond_25

    .line 1394
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 1395
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1396
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "activityNdx":I
    :goto_3
    if-ltz v2, :cond_24

    .line 1397
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1398
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v9, :cond_8

    .line 1396
    :cond_6
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1386
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    .end local v3    # "behindFullscreen":Z
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "taskNdx":I
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    .line 1401
    .restart local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v2    # "activityNdx":I
    .restart local v3    # "behindFullscreen":Z
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "taskNdx":I
    :cond_8
    if-eqz v0, :cond_9

    if-ne v5, v8, :cond_6

    .line 1404
    :cond_9
    const/4 v0, 0x0

    .line 1407
    if-eqz v3, :cond_a

    iget-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v9, :cond_1d

    .line 1408
    :cond_a
    sget-boolean v9, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    if-eqz v9, :cond_b

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Make visible? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " finishing="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " state="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_b
    if-eq v5, p1, :cond_c

    .line 1415
    const/4 v9, 0x0

    invoke-virtual {p0, v5, v9}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 1418
    :cond_c
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_d

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v9, :cond_15

    .line 1420
    :cond_d
    invoke-direct {p0, v8, v5}, Lcom/android/server/am/ActivityStack;->skipStartActivityInEnsureVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 1424
    sget-boolean v9, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    if-eqz v9, :cond_e

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start and freeze screen for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :cond_e
    if-eq v5, p1, :cond_f

    .line 1426
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v9, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1428
    :cond_f
    iget-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v9, :cond_10

    iget-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v9, :cond_12

    .line 1429
    :cond_10
    sget-boolean v9, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    if-eqz v9, :cond_11

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting and making visible: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :cond_11
    const/4 v9, 0x1

    invoke-direct {p0, v5, v9}, Lcom/android/server/am/ActivityStack;->setVisibile(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1433
    :cond_12
    if-eq v5, p1, :cond_13

    .line 1434
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v5, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1489
    :cond_13
    :goto_5
    iget v9, v5, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr p2, v9

    .line 1491
    iget-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v9, :cond_1b

    .line 1493
    sget-boolean v9, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    if-eqz v9, :cond_14

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fullscreen: at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_14
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 1438
    :cond_15
    iget-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v9, :cond_18

    .line 1439
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v9

    if-eqz v9, :cond_16

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_16

    if-eq v5, p1, :cond_16

    iget-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->mPendingRestoreMax:Z

    if-eqz v9, :cond_16

    .line 1444
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v5, v9, v10}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 1445
    sget-boolean v9, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    if-eqz v9, :cond_13

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[BMW] Restore/Max: already visible at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", and relaunch it to stop."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1450
    :cond_16
    sget-boolean v9, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    if-eqz v9, :cond_17

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping: already visible at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_17
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 1453
    :try_start_0
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    if-eqz v9, :cond_13

    .line 1454
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v11, v5, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-interface {v9, v10, v11}, Landroid/app/IApplicationThread;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 1457
    :catch_0
    move-exception v9

    goto/16 :goto_5

    .line 1463
    :cond_18
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1464
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_13

    if-eq v5, p1, :cond_13

    .line 1467
    sget-boolean v9, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    if-eqz v9, :cond_19

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Making visible and scheduling visibility: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :cond_19
    :try_start_1
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v9, :cond_1a

    .line 1471
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5, v9}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1472
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1474
    :cond_1a
    const/4 v9, 0x1

    invoke-direct {p0, v5, v9}, Lcom/android/server/am/ActivityStack;->setVisibile(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1475
    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1476
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 1477
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 1478
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    .line 1479
    :catch_1
    move-exception v4

    .line 1482
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception thrown making visibile: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 1495
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v9

    if-nez v9, :cond_6

    iget-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v9, :cond_6

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1496
    sget-boolean v9, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    if-eqz v9, :cond_1c

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Showing home: at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_1c
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 1500
    :cond_1d
    sget-boolean v9, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    if-eqz v9, :cond_1e

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Make invisible? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " finishing="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " state="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " behindFullscreen="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_1e
    iget-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v9, :cond_23

    .line 1507
    sget-boolean v9, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    if-eqz v9, :cond_1f

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Making invisible: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_1f
    const/4 v9, 0x0

    :try_start_2
    invoke-direct {p0, v5, v9}, Lcom/android/server/am/ActivityStack;->setVisibile(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1510
    sget-object v9, Lcom/android/server/am/ActivityStack$1;->$SwitchMap$com$android$server$am$ActivityStack$ActivityState:[I

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_4

    .line 1513
    :pswitch_0
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_6

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v9, :cond_6

    .line 1514
    sget-boolean v9, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    if-eqz v9, :cond_20

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Scheduling invisibility: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :cond_20
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 1539
    :catch_2
    move-exception v4

    .line 1542
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception thrown making hidden: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1526
    .end local v4    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-ne v9, v5, :cond_21

    .line 1527
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->releaseBackgroundResources()V

    goto/16 :goto_4

    .line 1529
    :cond_21
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    .line 1530
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1532
    :cond_22
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    .line 1546
    :cond_23
    sget-boolean v9, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    if-eqz v9, :cond_6

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Already invisible: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1393
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_24
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_2

    .line 1552
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_25
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1555
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0

    .line 1510
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method final ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "globalChanges"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4280
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v5, :cond_2

    .line 4281
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->DEBUG_CONFIGURATION:Z

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping config check (will change): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4401
    :cond_1
    :goto_0
    return v3

    .line 4286
    :cond_2
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_CONFIGURATION:Z

    if-eqz v5, :cond_4

    :cond_3
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ensuring correct configuration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4291
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 4292
    .local v1, "newConfig":Landroid/content/res/Configuration;
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    if-ne v5, v1, :cond_6

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-nez v5, :cond_6

    .line 4293
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-nez v4, :cond_5

    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->DEBUG_CONFIGURATION:Z

    if-eqz v4, :cond_1

    :cond_5
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Configuration unchanged in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4299
    :cond_6
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_9

    .line 4300
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-nez v5, :cond_7

    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_CONFIGURATION:Z

    if-eqz v5, :cond_8

    :cond_7
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Configuration doesn\'t matter in finishing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4302
    :cond_8
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_0

    .line 4308
    :cond_9
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 4309
    .local v2, "oldConfig":Landroid/content/res/Configuration;
    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 4315
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 4316
    .local v0, "changes":I
    if-nez v0, :cond_b

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-nez v5, :cond_b

    .line 4317
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-nez v4, :cond_a

    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->DEBUG_CONFIGURATION:Z

    if-eqz v4, :cond_1

    :cond_a
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Configuration no differences in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4324
    :cond_b
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_c

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v5, :cond_f

    .line 4325
    :cond_c
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-nez v5, :cond_d

    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_CONFIGURATION:Z

    if-eqz v5, :cond_e

    :cond_d
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Configuration doesn\'t matter not running "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4327
    :cond_e
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 4328
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    goto/16 :goto_0

    .line 4333
    :cond_f
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-nez v5, :cond_10

    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_CONFIGURATION:Z

    if-eqz v5, :cond_11

    .line 4334
    :cond_10
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking to restart "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": changed=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", handles=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newConfig="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4339
    :cond_11
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v5

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v0

    if-nez v5, :cond_12

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v5, :cond_20

    .line 4342
    :cond_12
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_13

    and-int/lit16 v5, v0, 0x80

    if-nez v5, :cond_1

    .line 4350
    :cond_13
    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr v5, v0

    iput v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 4351
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v5, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 4352
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 4353
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_14

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v5, :cond_17

    .line 4354
    :cond_14
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-nez v5, :cond_15

    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_CONFIGURATION:Z

    if-eqz v5, :cond_16

    :cond_15
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Config is destroying non-running "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4356
    :cond_16
    const-string v5, "config"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    :goto_1
    move v3, v4

    .line 4383
    goto/16 :goto_0

    .line 4357
    :cond_17
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_1a

    .line 4361
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-nez v4, :cond_18

    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->DEBUG_CONFIGURATION:Z

    if-eqz v4, :cond_19

    :cond_18
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Config is skipping already pausing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4363
    :cond_19
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    goto/16 :goto_0

    .line 4365
    :cond_1a
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_1d

    .line 4370
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-nez v5, :cond_1b

    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_CONFIGURATION:Z

    if-eqz v5, :cond_1c

    :cond_1b
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Config is relaunching resumed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4372
    :cond_1c
    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v5, v3}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 4373
    iput v4, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_1

    .line 4375
    :cond_1d
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-nez v3, :cond_1e

    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_CONFIGURATION:Z

    if-eqz v3, :cond_1f

    :cond_1e
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Config is relaunching non-resumed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4377
    :cond_1f
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 4378
    iput v4, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto/16 :goto_1

    .line 4391
    :cond_20
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_22

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_22

    .line 4393
    :try_start_0
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_CONFIGURATION:Z

    if-eqz v5, :cond_21

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending new config to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4394
    :cond_21
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v5, v6}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4399
    :cond_22
    :goto_2
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto/16 :goto_0

    .line 4395
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method findActivityLocked(Landroid/content/Intent;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "activityrecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v7, 0x0

    .line 668
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 669
    .local v2, "cls":Landroid/content/ComponentName;
    iget-object v8, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 670
    new-instance v2, Landroid/content/ComponentName;

    .end local v2    # "cls":Landroid/content/ComponentName;
    iget-object v8, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    .restart local v2    # "cls":Landroid/content/ComponentName;
    :cond_0
    iget-object v8, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 674
    .local v6, "userId":I
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "taskNdx":I
    :goto_0
    if-ltz v5, :cond_5

    .line 675
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 676
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget v8, v4, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v8}, Lcom/android/server/am/ActivityStack;->isCurrentProfileLocked(I)Z

    move-result v8

    if-nez v8, :cond_2

    move-object v3, v7

    .line 691
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    :goto_1
    return-object v3

    .line 679
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 680
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "activityNdx":I
    :goto_2
    if-ltz v1, :cond_4

    .line 681
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 682
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v8, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v8, :cond_3

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v8, v6, :cond_3

    iget v8, v3, Lcom/android/server/am/ActivityRecord;->dataId:I

    iget v9, p2, Lcom/android/server/am/ActivityRecord;->dataId:I

    if-eq v8, v9, :cond_1

    .line 680
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 674
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    move-object v3, v7

    .line 691
    goto :goto_1
.end method

.method findNextTranslucentActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v12, 0x0

    .line 1247
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1248
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    if-nez v8, :cond_1

    .line 1286
    :cond_0
    :goto_0
    return-object v12

    .line 1252
    :cond_1
    iget-object v6, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1253
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v6, :cond_0

    .line 1257
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1259
    .local v7, "stackNdx":I
    iget-object v10, v6, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1260
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 1262
    .local v9, "taskNdx":I
    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1263
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    add-int/lit8 v2, v11, 0x1

    .line 1265
    .local v2, "activityNdx":I
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1266
    .local v4, "numStacks":I
    :goto_1
    if-ge v7, v4, :cond_0

    .line 1267
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStack;

    iget-object v10, v11, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1268
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1269
    .local v5, "numTasks":I
    :goto_2
    if-ge v9, v5, :cond_5

    .line 1270
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1271
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1272
    .local v3, "numActivities":I
    :goto_3
    if-ge v2, v3, :cond_4

    .line 1273
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1274
    .local v1, "activity":Lcom/android/server/am/ActivityRecord;
    iget-boolean v11, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v11, :cond_3

    .line 1275
    iget-boolean v11, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v11, :cond_2

    move-object v1, v12

    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    move-object v12, v1

    goto :goto_0

    .line 1277
    .restart local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 1278
    goto :goto_3

    .line 1279
    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_4
    const/4 v2, 0x0

    .line 1280
    add-int/lit8 v9, v9, 0x1

    .line 1281
    goto :goto_2

    .line 1282
    .end local v3    # "numActivities":I
    :cond_5
    const/4 v9, 0x0

    .line 1283
    add-int/lit8 v7, v7, 0x1

    .line 1284
    goto :goto_1
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 17
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 579
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 580
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 581
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 582
    .local v2, "cls":Landroid/content/ComponentName;
    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v14, :cond_0

    .line 583
    new-instance v2, Landroid/content/ComponentName;

    .end local v2    # "cls":Landroid/content/ComponentName;
    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v2, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    .restart local v2    # "cls":Landroid/content/ComponentName;
    :cond_0
    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 586
    .local v13, "userId":I
    if-eqz v5, :cond_3

    const/4 v14, 0x1

    :goto_0
    invoke-virtual {v5}, Landroid/content/Intent;->isDocument()Z

    move-result v15

    and-int v6, v14, v15

    .line 588
    .local v6, "isDocument":Z
    if-eqz v6, :cond_4

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 590
    .local v3, "documentData":Landroid/net/Uri;
    :goto_1
    sget-boolean v14, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v14, :cond_1

    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Looking for task of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v12, v14, -0x1

    .local v12, "taskNdx":I
    :goto_2
    if-ltz v12, :cond_13

    .line 592
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 593
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    iget-object v14, v8, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v14, :cond_5

    .line 595
    sget-boolean v14, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v14, :cond_2

    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Skipping "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": voice session"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_2
    :goto_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 586
    .end local v3    # "documentData":Landroid/net/Uri;
    .end local v6    # "isDocument":Z
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    .end local v12    # "taskNdx":I
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 588
    .restart local v6    # "isDocument":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 598
    .restart local v3    # "documentData":Landroid/net/Uri;
    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "taskNdx":I
    :cond_5
    iget v14, v8, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v14, v13, :cond_6

    .line 600
    sget-boolean v14, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v14, :cond_2

    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Skipping "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": different user"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 603
    :cond_6
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 604
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_7

    iget-boolean v14, v7, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v14, :cond_7

    iget v14, v7, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v14, v13, :cond_7

    iget v14, v7, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_8

    .line 606
    :cond_7
    sget-boolean v14, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v14, :cond_2

    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Skipping "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": mismatch root "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 609
    :cond_8
    iget v14, v7, Lcom/android/server/am/ActivityRecord;->dataId:I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->dataId:I

    if-eq v14, v15, :cond_9

    .line 610
    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Skipping "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": mismatch type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 614
    :cond_9
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 615
    .local v10, "taskIntent":Landroid/content/Intent;
    iget-object v1, v8, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 618
    .local v1, "affinityIntent":Landroid/content/Intent;
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Landroid/content/Intent;->isDocument()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 619
    const/4 v11, 0x1

    .line 620
    .local v11, "taskIsDocument":Z
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 629
    .local v9, "taskDocumentData":Landroid/net/Uri;
    :goto_4
    sget-boolean v14, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v14, :cond_a

    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Comparing existing cls="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/aff="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to new cls="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/aff="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_a
    if-nez v6, :cond_e

    if-nez v11, :cond_e

    iget-object v14, v8, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v14, :cond_e

    .line 634
    iget-object v14, v8, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 635
    sget-boolean v14, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v14, :cond_b

    const-string v14, "ActivityManager"

    const-string v15, "Found matching affinity!"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    .end local v1    # "affinityIntent":Landroid/content/Intent;
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    .end local v9    # "taskDocumentData":Landroid/net/Uri;
    .end local v10    # "taskIntent":Landroid/content/Intent;
    .end local v11    # "taskIsDocument":Z
    :cond_b
    :goto_5
    return-object v7

    .line 621
    .restart local v1    # "affinityIntent":Landroid/content/Intent;
    .restart local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v10    # "taskIntent":Landroid/content/Intent;
    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/content/Intent;->isDocument()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 622
    const/4 v11, 0x1

    .line 623
    .restart local v11    # "taskIsDocument":Z
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .restart local v9    # "taskDocumentData":Landroid/net/Uri;
    goto/16 :goto_4

    .line 625
    .end local v9    # "taskDocumentData":Landroid/net/Uri;
    .end local v11    # "taskIsDocument":Z
    :cond_d
    const/4 v11, 0x0

    .line 626
    .restart local v11    # "taskIsDocument":Z
    const/4 v9, 0x0

    .restart local v9    # "taskDocumentData":Landroid/net/Uri;
    goto/16 :goto_4

    .line 638
    :cond_e
    if-eqz v10, :cond_10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v14

    if-nez v14, :cond_10

    invoke-static {v3, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 641
    sget-boolean v14, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v14, :cond_f

    const-string v14, "ActivityManager"

    const-string v15, "Found matching class!"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_f
    sget-boolean v14, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v14, :cond_b

    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "For Intent "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " bringing to top: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 646
    :cond_10
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_12

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v14

    if-nez v14, :cond_12

    invoke-static {v3, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 649
    sget-boolean v14, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v14, :cond_11

    const-string v14, "ActivityManager"

    const-string v15, "Found matching class!"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_11
    sget-boolean v14, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v14, :cond_b

    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "For Intent "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " bringing to top: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 654
    :cond_12
    sget-boolean v14, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v14, :cond_2

    .line 655
    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Not a match: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 659
    .end local v1    # "affinityIntent":Landroid/content/Intent;
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    .end local v9    # "taskDocumentData":Landroid/net/Uri;
    .end local v10    # "taskIntent":Landroid/content/Intent;
    .end local v11    # "taskIsDocument":Z
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_5
.end method

.method final finishActivityAffinityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v5, 0x1

    .line 3100
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3101
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .local v7, "index":I
    :goto_0
    if-ltz v7, :cond_0

    .line 3102
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3103
    .local v1, "cur":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3108
    .end local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return v5

    .line 3106
    .restart local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "request-affinity"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3101
    add-int/lit8 v7, v7, -0x1

    goto :goto_0
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .prologue
    .line 3149
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_0

    .line 3150
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate finish request for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    const/4 v5, 0x0

    .line 3217
    :goto_0
    return v5

    .line 3154
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 3155
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3156
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    const/16 v5, 0x7531

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    aput-object p4, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3160
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v5, :cond_1

    .line 3161
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACT-AM_FINISH_ACTIVITY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " task:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    :cond_1
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3164
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3165
    .local v2, "index":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_2

    .line 3166
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 3167
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 3171
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3172
    .local v3, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v6, 0x80000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3176
    .end local v3    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 3178
    const-string v5, "finishActivity"

    invoke-direct {p0, p1, v5}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3180
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 3182
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v5, p1, :cond_b

    .line 3183
    if-gtz v2, :cond_9

    const/4 v1, 0x1

    .line 3184
    .local v1, "endTask":Z
    :goto_1
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_TRANSITION:Z

    if-eqz v5, :cond_4

    :cond_3
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Prepare close transition: finishing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_a

    const/16 v5, 0x9

    :goto_2
    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3191
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 3193
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_7

    .line 3194
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_5

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finish needs to pause: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    :cond_5
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_USER_LEAVING:Z

    if-eqz v5, :cond_6

    const-string v5, "ActivityManager"

    const-string v6, "finish() => pause with userLeaving=false"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    .line 3199
    :cond_7
    if-eqz v1, :cond_8

    .line 3200
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityStackSupervisor;->endLockTaskModeIfTaskEnding(Lcom/android/server/am/TaskRecord;)V

    .line 3217
    .end local v1    # "endTask":Z
    :cond_8
    :goto_3
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 3183
    :cond_9
    const/4 v1, 0x0

    goto :goto_1

    .line 3186
    .restart local v1    # "endTask":Z
    :cond_a
    const/4 v5, 0x7

    goto :goto_2

    .line 3202
    .end local v1    # "endTask":Z
    :cond_b
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_10

    .line 3205
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_c

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finish not pausing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    :cond_c
    const-string v5, "clear"

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 3208
    const/4 v5, 0x3

    invoke-virtual {p0, p1, v5, p5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_d

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 3211
    :cond_e
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5, p5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_f

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 3214
    :cond_10
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_8

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finish waiting for pause of: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method final finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 3113
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3114
    .local v6, "resultTo":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_4

    .line 3115
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_RESULTS:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " who="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " req="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    :cond_0
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v0, v1, :cond_1

    .line 3119
    if-eqz p3, :cond_1

    .line 3120
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setContentUserHint(I)V

    .line 3123
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v0, :cond_2

    .line 3124
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 3128
    :cond_2
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3130
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3137
    :cond_3
    :goto_0
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3138
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 3139
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3140
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 3141
    return-void

    .line 3132
    :cond_4
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_RESULTS:Z

    if-eqz v0, :cond_3

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No result destination from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method finishAllActivitiesLocked(Z)V
    .locals 9
    .param p1, "immediately"    # Z

    .prologue
    const/4 v8, 0x0

    .line 3312
    const/4 v2, 0x1

    .line 3313
    .local v2, "noActivitiesInStack":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    .line 3314
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3315
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 3316
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3317
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    .line 3318
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_0

    if-nez p1, :cond_0

    .line 3315
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3321
    :cond_0
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishAllActivitiesLocked: finishing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " immediately"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    invoke-virtual {p0, v3, v8, v8}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    goto :goto_2

    .line 3313
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3325
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2
    if-eqz v2, :cond_3

    .line 3326
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    .line 3328
    :cond_3
    return-void
.end method

.method final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "mode"    # I
    .param p3, "oomAdj"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 3229
    const/4 v4, 0x2

    if-ne p2, v4, :cond_5

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v4, :cond_5

    .line 3230
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3231
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3232
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v8, :cond_0

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v7, :cond_4

    .line 3238
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 3240
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v3, :cond_1

    .line 3241
    const-string v3, "ActivityManager"

    const-string v4, "ACT-IDLE_NOW_MSG from finishCurrentActivityLocked for mStoppingActivities.size() > 3"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    :cond_1
    :goto_0
    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v3, :cond_2

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moving to STOPPING: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (finish requested)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    :cond_2
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3250
    if-eqz p3, :cond_3

    .line 3251
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3308
    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    :goto_1
    return-object p1

    .line 3244
    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    goto :goto_0

    .line 3257
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3258
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3259
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3261
    sget-boolean v4, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v4, :cond_6

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving to FINISHING, set waitingVisible false orignal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    :cond_6
    const/4 v4, 0x0

    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 3264
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_7

    .line 3265
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3267
    :cond_7
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3268
    .local v2, "prevState":Lcom/android/server/am/ActivityStack$ActivityState;
    sget-boolean v4, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v4, :cond_8

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving to FINISHING: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    :cond_8
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3272
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-eqz v4, :cond_9

    .line 3273
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prevState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    :cond_9
    const/4 v1, 0x1

    .line 3280
    .local v1, "canDestroyHere":Z
    if-ne p2, v8, :cond_a

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_a

    .line 3281
    const/4 v1, 0x0

    .line 3285
    :cond_a
    if-eqz v1, :cond_e

    if-eqz p2, :cond_b

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v4, :cond_b

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v4, :cond_e

    .line 3291
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 3292
    const-string v4, "finish-imm"

    invoke-virtual {p0, p1, v7, v4}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    .line 3293
    .local v0, "activityRemoved":Z
    if-eqz v0, :cond_c

    .line 3294
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 3296
    :cond_c
    sget-boolean v4, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_CONTAINERS:Z

    if-eqz v4, :cond_d

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "destroyActivityLocked: finishCurrentActivityLocked r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " destroy returned removed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    :cond_d
    if-eqz v0, :cond_3

    move-object p1, v3

    goto/16 :goto_1

    .line 3304
    .end local v0    # "activityRemoved":Z
    :cond_e
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->localLOGV:Z

    if-eqz v4, :cond_f

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enqueueing pending finish: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    :cond_f
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3306
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3307
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_1
.end method

.method final finishSubActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 9
    .param p1, "self"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 3024
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "taskNdx":I
    :goto_0
    if-ltz v8, :cond_4

    .line 3025
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3026
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "activityNdx":I
    :goto_1
    if-ltz v7, :cond_3

    .line 3027
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3028
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_2

    iget v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    if-ne v0, p3, :cond_2

    .line 3029
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3031
    :cond_1
    const/4 v3, 0x0

    const-string v4, "request-sub"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3026
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 3024
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 3037
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3038
    return-void
.end method

.method final finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3041
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 3042
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_4

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_4

    .line 3045
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force finishing activity 1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 3048
    .local v7, "taskNdx":I
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 3049
    .local v6, "activityNdx":I
    const-string v4, "crashed"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3053
    add-int/lit8 v6, v6, -0x1

    .line 3054
    if-gez v6, :cond_1

    .line 3056
    :cond_0
    add-int/lit8 v7, v7, -0x1

    .line 3057
    if-gez v7, :cond_5

    .line 3063
    :cond_1
    :goto_0
    if-ltz v6, :cond_4

    .line 3064
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3065
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v4, :cond_2

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v4, :cond_2

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v4, :cond_4

    .line 3068
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v4, :cond_4

    .line 3069
    :cond_3
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force finishing activity 2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    const-string v4, "crashed"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3076
    .end local v6    # "activityNdx":I
    .end local v7    # "taskNdx":I
    :cond_4
    return-void

    .line 3060
    .restart local v6    # "activityNdx":I
    .restart local v7    # "taskNdx":I
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 3061
    if-ltz v6, :cond_0

    goto :goto_0
.end method

.method final finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 11
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .prologue
    const/4 v2, 0x0

    .line 3079
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 3080
    .local v8, "sessionBinder":Landroid/os/IBinder;
    const/4 v7, 0x0

    .line 3081
    .local v7, "didOne":Z
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .local v9, "taskNdx":I
    :goto_0
    if-ltz v9, :cond_2

    .line 3082
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    .line 3083
    .local v10, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, v8, :cond_1

    .line 3084
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "activityNdx":I
    :goto_1
    if-ltz v6, :cond_1

    .line 3085
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3086
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    .line 3087
    const/4 v3, 0x0

    const-string v4, "finish-voice"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3089
    const/4 v7, 0x1

    .line 3084
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 3081
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "activityNdx":I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 3094
    .end local v10    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    if-eqz v7, :cond_3

    .line 3095
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3097
    :cond_3
    return-void
.end method

.method forceStopPackageLocked(Ljava/lang/String;ZZI)Z
    .locals 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "doit"    # Z
    .param p3, "evenPersistent"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 4498
    const/4 v9, 0x0

    .line 4499
    .local v9, "didSomething":Z
    const/4 v11, 0x0

    .line 4500
    .local v11, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v10, 0x0

    .line 4501
    .local v10, "homeActivity":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v14, v1, -0x1

    .local v14, "taskNdx":I
    :goto_0
    if-ltz v14, :cond_d

    .line 4502
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v7, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4503
    .local v7, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4504
    .local v12, "numActivities":I
    const/4 v8, 0x0

    .local v8, "activityNdx":I
    :goto_1
    if-ge v8, v12, :cond_c

    .line 4505
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4506
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_5

    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p4

    if-ne v1, v0, :cond_5

    :cond_0
    const/4 v13, 0x1

    .line 4508
    .local v13, "samePackage":Z
    :goto_2
    const/4 v1, -0x1

    move/from16 v0, p4

    if-eq v0, v1, :cond_1

    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p4

    if-ne v1, v0, :cond_4

    :cond_1
    if-nez v13, :cond_2

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v1, v11, :cond_4

    :cond_2
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3

    if-nez p3, :cond_3

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v1, :cond_4

    .line 4511
    :cond_3
    if-nez p2, :cond_7

    .line 4512
    iget-boolean v1, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_6

    .line 4504
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4506
    .end local v13    # "samePackage":Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 4517
    .restart local v13    # "samePackage":Z
    :cond_6
    const/4 v1, 0x1

    .line 4545
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "activityNdx":I
    .end local v12    # "numActivities":I
    .end local v13    # "samePackage":Z
    :goto_4
    return v1

    .line 4519
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v8    # "activityNdx":I
    .restart local v12    # "numActivities":I
    .restart local v13    # "samePackage":Z
    :cond_7
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4520
    if-eqz v10, :cond_8

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4521
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip force-stop again "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4524
    :cond_8
    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 4527
    :cond_9
    const/4 v9, 0x1

    .line 4528
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Force finishing activity 3 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4529
    if-eqz v13, :cond_b

    .line 4530
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_a

    .line 4531
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 4533
    :cond_a
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4535
    :cond_b
    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4536
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "force-stop"

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4539
    add-int/lit8 v12, v12, -0x1

    .line 4540
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 4501
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "samePackage":Z
    :cond_c
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "activityNdx":I
    .end local v12    # "numActivities":I
    :cond_d
    move v1, v9

    .line 4545
    goto :goto_4
.end method

.method getAllTasks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4792
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getAppStackLocked()Lcom/android/server/am/ActivityStack;
    .locals 4

    .prologue
    .line 4871
    const/4 v0, 0x0

    .line 4872
    .local v0, "appStack":Lcom/android/server/am/ActivityStack;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 4873
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 4874
    .local v2, "tmp":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4875
    move-object v0, v2

    .line 4879
    .end local v2    # "tmp":Lcom/android/server/am/ActivityStack;
    :cond_0
    return-object v0

    .line 4872
    .restart local v2    # "tmp":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4667
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const-string v8, "all"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4668
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "taskNdx":I
    :goto_0
    if-ltz v6, :cond_1

    .line 4669
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4668
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 4671
    .end local v6    # "taskNdx":I
    :cond_0
    const-string v8, "top"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4672
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    .line 4673
    .local v7, "top":I
    if-ltz v7, :cond_1

    .line 4674
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4675
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 4676
    .local v3, "listTop":I
    if-ltz v3, :cond_1

    .line 4677
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4693
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "listTop":I
    .end local v7    # "top":I
    :cond_1
    return-object v0

    .line 4681
    :cond_2
    new-instance v4, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v4}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 4682
    .local v4, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 4684
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .restart local v6    # "taskNdx":I
    :goto_1
    if-ltz v6, :cond_1

    .line 4685
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 4686
    .local v5, "r1":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4687
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4684
    .end local v5    # "r1":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1
.end method

.method public getStackId()I
    .locals 1

    .prologue
    .line 4818
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    return v0
.end method

.method getTasksLocked(Ljava/util/List;IZ)V
    .locals 12
    .param p2, "callingUid"    # I
    .param p3, "allowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 4549
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .local v7, "taskNdx":I
    :goto_0
    if-ltz v7, :cond_9

    .line 4550
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 4551
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    const/4 v5, 0x0

    .line 4552
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v8, 0x0

    .line 4553
    .local v8, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v3, 0x0

    .line 4554
    .local v3, "numActivities":I
    const/4 v4, 0x0

    .line 4555
    .local v4, "numRunning":I
    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4556
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4549
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 4559
    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v9

    if-nez v9, :cond_2

    iget v9, v6, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    if-ne v9, p2, :cond_0

    .line 4562
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "activityNdx":I
    :goto_2
    if-ltz v1, :cond_7

    .line 4563
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 4566
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v8, :cond_3

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_4

    .line 4567
    :cond_3
    move-object v8, v5

    .line 4568
    const/4 v4, 0x0

    move v3, v4

    .line 4572
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 4573
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_5

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v9, :cond_5

    .line 4574
    add-int/lit8 v4, v4, 0x1

    .line 4577
    :cond_5
    sget-boolean v9, Lcom/android/server/am/ActivityManagerService;->localLOGV:Z

    if-eqz v9, :cond_6

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": task="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4562
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 4582
    :cond_7
    new-instance v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 4583
    .local v2, "ci":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v9, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v9, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 4584
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 4585
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 4586
    iget-wide v10, v6, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput-wide v10, v2, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 4588
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_8

    .line 4589
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    iput-object v9, v2, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    .line 4591
    :cond_8
    iput v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    .line 4592
    iput v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    .line 4595
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 4597
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "ci":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "numActivities":I
    .end local v4    # "numRunning":I
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v8    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_9
    return-void
.end method

.method getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .prologue
    .line 3878
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method goToSleep()V
    .locals 6

    .prologue
    .line 815
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 819
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_3

    .line 820
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 821
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_2

    .line 822
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 823
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_0

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_1

    .line 824
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 821
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 819
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 828
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_3
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v7, 0x0

    .line 4633
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_2

    .line 4634
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4635
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 4636
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4637
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p1, :cond_0

    .line 4638
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Force finishing activity 4 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4641
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4642
    invoke-virtual {p0, v2, v7, v7}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    .line 4635
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 4633
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4646
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v3, 0x0

    .line 4619
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_2

    .line 4620
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_CLEANUP:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App died while pausing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4622
    :cond_1
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 4624
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_3

    .line 4625
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4626
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 4629
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method hasVisibleBehindActivity()Z
    .locals 1

    .prologue
    .line 3868
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->hasVisibleBehindActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isAttached()Z
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFloatingStack()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4848
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4854
    :cond_0
    :goto_0
    return v0

    .line 4851
    :cond_1
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4852
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v0

    goto :goto_0
.end method

.method final isHomeStack()Z
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 486
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 487
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    .line 488
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 489
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v2, p0, :cond_0

    const-string v2, "ActivityManager"

    const-string v3, "Illegal state! task does not point to stack it is in."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isOnHomeDisplay()Z
    .locals 1

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStickStack()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4859
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4865
    :cond_0
    :goto_0
    return v0

    .line 4862
    :cond_1
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4863
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isStickStack(I)Z

    move-result v0

    goto :goto_0
.end method

.method minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 729
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 730
    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving to RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (starting new instance)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 733
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 734
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 735
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 736
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 737
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 738
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 739
    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_SAVED_STATE:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch completed; removing icicle of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_1
    return-void
.end method

.method moveHomeStackTaskToTop(I)V
    .locals 6
    .param p1, "homeStackTaskType"    # I

    .prologue
    .line 4027
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 4028
    .local v2, "top":I
    move v1, v2

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 4029
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 4030
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-ne v3, p1, :cond_3

    .line 4031
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v3, :cond_1

    .line 4032
    :cond_0
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveHomeStackTaskToTop: moving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4033
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4034
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4035
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 4036
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 4040
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    return-void

    .line 4028
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method final moveTaskToBackLocked(I)Z
    .locals 17
    .param p1, "taskId"    # I

    .prologue
    .line 4129
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 4130
    .local v11, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v11, :cond_0

    .line 4131
    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "moveTaskToBack: bad taskId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    const/4 v13, 0x0

    .line 4257
    :goto_0
    return v13

    .line 4135
    :cond_0
    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "moveTaskToBack: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4137
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v13, v11}, Lcom/android/server/am/ActivityStackSupervisor;->endLockTaskModeIfTaskEnding(Lcom/android/server/am/TaskRecord;)V

    .line 4142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v13, :cond_2

    .line 4143
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v13, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 4144
    .local v5, "next":Lcom/android/server/am/ActivityRecord;
    if-nez v5, :cond_1

    .line 4145
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 4147
    :cond_1
    if-eqz v5, :cond_2

    .line 4149
    const/4 v4, 0x1

    .line 4151
    .local v4, "moveOK":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v14, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v13, v14}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 4156
    :goto_1
    if-nez v4, :cond_2

    .line 4157
    const/4 v13, 0x0

    goto :goto_0

    .line 4152
    :catch_0
    move-exception v2

    .line 4153
    .local v2, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 4154
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_1

    .line 4162
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "moveOK":Z
    .end local v5    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_2
    sget-boolean v13, Lcom/android/server/am/ActivityManagerService;->DEBUG_TRANSITION:Z

    if-eqz v13, :cond_3

    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Prepare to back transition: task="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4165
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4166
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4168
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v13, :cond_4

    .line 4169
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Ljava/util/ArrayList;)V

    .line 4172
    :cond_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 4176
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4177
    .local v6, "numTasks":I
    const/4 v7, 0x0

    .line 4178
    .local v7, "numValidTasks":I
    const/4 v12, 0x0

    .line 4180
    .local v12, "validTask":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v9, v6, -0x1

    .local v9, "taskNdx":I
    :goto_2
    if-ltz v9, :cond_6

    .line 4181
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 4182
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    iget-object v13, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    if-eqz v13, :cond_5

    iget-object v13, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_5

    .line 4183
    move-object v12, v8

    .line 4184
    add-int/lit8 v7, v7, 0x1

    .line 4186
    :cond_5
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 4188
    iget-object v13, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    if-eqz v13, :cond_c

    iget-object v13, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_c

    .line 4189
    sget-boolean v13, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v13, :cond_6

    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Find task "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " over home"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4204
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v13

    if-nez v13, :cond_8

    const/4 v13, 0x1

    if-ne v7, v13, :cond_8

    .line 4205
    sget-boolean v13, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v13, :cond_7

    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Single valid task "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", set over home."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4207
    :cond_7
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 4211
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v14, 0xb

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4212
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToBottom(I)V

    .line 4218
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 4219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveFloatingStackToBackLocked(Lcom/android/server/am/ActivityStack;)V

    .line 4224
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4225
    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    :goto_3
    if-eqz v8, :cond_10

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    .line 4226
    .local v3, "isOverHome":Z
    :goto_4
    if-ne v8, v11, :cond_a

    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v13

    if-nez v13, :cond_b

    :cond_a
    const/4 v13, 0x1

    if-gt v6, v13, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v13

    if-eqz v13, :cond_16

    .line 4227
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v13, v13, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v13, v13, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v13, :cond_11

    .line 4229
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 4192
    .end local v3    # "isOverHome":Z
    :cond_c
    sget-boolean v13, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v13, :cond_d

    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignore empty task "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " when finding home"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4197
    :cond_d
    const/4 v13, 0x1

    if-ne v9, v13, :cond_e

    .line 4199
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 4180
    :cond_e
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2

    .line 4224
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_f
    const/4 v8, 0x0

    goto :goto_3

    .line 4225
    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_10
    const/4 v3, 0x0

    goto :goto_4

    .line 4231
    .restart local v3    # "isOverHome":Z
    :cond_11
    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v10

    .line 4232
    .local v10, "taskToReturnTo":I
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 4234
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 4236
    if-eqz v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v13

    if-nez v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v14, 0x0

    invoke-virtual {v13, v10, v14}, Lcom/android/server/am/ActivityStackSupervisor;->moveNextFloatingStackToTopLocked(ILcom/android/server/am/ActivityStack;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 4238
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v13, :cond_12

    .line 4239
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    .line 4241
    :cond_12
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 4243
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v13

    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v13, :cond_14

    .line 4244
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    .line 4245
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 4247
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v14, 0x0

    const-string v15, "moveTaskToBack"

    invoke-virtual {v13, v10, v14, v15}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_0

    .line 4251
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v14, 0x0

    const-string v15, "moveTaskToBack"

    invoke-virtual {v13, v10, v14, v15}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_0

    .line 4256
    .end local v10    # "taskToReturnTo":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4257
    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 10
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "source"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    const/high16 v9, 0x10000

    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 4044
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-eqz v3, :cond_0

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTaskToFront: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4046
    :cond_0
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v3, :cond_1

    .line 4047
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACT-moveTaskToFront: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4050
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4051
    .local v1, "numTasks":I
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4052
    .local v0, "index":I
    if-eqz v1, :cond_2

    if-gez v0, :cond_5

    .line 4054
    :cond_2
    if-eqz p2, :cond_4

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v9

    if-eqz v3, :cond_4

    .line 4056
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4115
    :cond_3
    :goto_0
    return-void

    .line 4058
    :cond_4
    invoke-virtual {p0, v8, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 4065
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;)V

    .line 4066
    invoke-virtual {p0, p4}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 4068
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v3, :cond_6

    .line 4069
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Ljava/util/ArrayList;)V

    .line 4073
    :cond_6
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_TRANSITION:Z

    if-eqz v3, :cond_7

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepare to front transition: task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4074
    :cond_7
    if-eqz p2, :cond_c

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v9

    if-eqz v3, :cond_c

    .line 4076
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v6, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4077
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 4078
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_8

    .line 4079
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4081
    :cond_8
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4086
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4088
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p0}, Lcom/android/server/am/ActivityStackSupervisor;->moveFloatingStackToFrontLocked(Lcom/android/server/am/ActivityStack;)V

    .line 4091
    :cond_9
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4092
    const/16 v3, 0x7532

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget v6, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4094
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v3, :cond_a

    .line 4095
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACT-AM_TASK_TO_FRONT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4102
    :cond_a
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4105
    invoke-virtual {p1, v7}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 4106
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, v7}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    invoke-virtual {v3, v4, p4}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4112
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    goto/16 :goto_0

    .line 4083
    :cond_c
    invoke-virtual {p0, v8, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_1
.end method

.method final moveToFront(Ljava/lang/String;)V
    .locals 11
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 514
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 516
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v6

    if-nez v6, :cond_1

    .line 517
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v7

    invoke-virtual {v6, v7, p1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;)V

    .line 521
    :cond_1
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 522
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getFrontFloatStacks(I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 523
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getBackFloatStacks(I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 524
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getFrontFloatStacks(I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 528
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 532
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 533
    sget-boolean v6, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-nez v6, :cond_3

    sget-boolean v6, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v6, :cond_4

    .line 534
    :cond_3
    const-string v6, "ActivityManager"

    const-string v7, "[BMW] moveToFront(isHomeStack), move all float stack to back"

    new-instance v8, Ljava/lang/Throwable;

    const-string v9, "moveToFront"

    invoke-direct {v8, v9}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getFrontFloatStacks(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 539
    .local v1, "frontFloatStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getBackFloatStacks(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 542
    .local v0, "backFloatStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 543
    .local v4, "stackSize":I
    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_6

    .line 544
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 545
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isStickStack()Z

    move-result v6

    if-nez v6, :cond_5

    .line 546
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 548
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v10, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 549
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 543
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 554
    .end local v0    # "backFloatStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v1    # "frontFloatStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v2    # "i":I
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "stackSize":I
    :cond_6
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v6}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusStacks(Lcom/android/server/am/ActivityStack;)V

    .line 557
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 558
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_8

    .line 559
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v7, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 563
    :cond_8
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 564
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->keepStickyStackLocked()V

    .line 568
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_9
    return-void
.end method

.method final navigateUpToLocked(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .locals 42
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 3369
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v39

    .line 3370
    .local v39, "srec":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v41, v0

    .line 3371
    .local v41, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    .line 3372
    .local v23, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v40

    .line 3373
    .local v40, "start":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-gez v40, :cond_1

    .line 3374
    :cond_0
    const/16 v29, 0x0

    .line 3446
    :goto_0
    return v29

    .line 3376
    :cond_1
    add-int/lit8 v28, v40, -0x1

    .line 3377
    .local v28, "finishTo":I
    if-gez v28, :cond_3

    const/16 v34, 0x0

    .line 3378
    .local v34, "parent":Lcom/android/server/am/ActivityRecord;
    :goto_1
    const/16 v29, 0x0

    .line 3379
    .local v29, "foundParentInTask":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    .line 3380
    .local v25, "dest":Landroid/content/ComponentName;
    if-lez v40, :cond_2

    if-eqz v25, :cond_2

    .line 3381
    move/from16 v30, v28

    .local v30, "i":I
    :goto_2
    if-ltz v30, :cond_2

    .line 3382
    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/am/ActivityRecord;

    .line 3383
    .local v36, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3385
    move/from16 v28, v30

    .line 3386
    move-object/from16 v34, v36

    .line 3387
    const/16 v29, 0x1

    .line 3393
    .end local v30    # "i":I
    .end local v36    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v24, v0

    .line 3394
    .local v24, "controller":Landroid/app/IActivityController;
    if-eqz v24, :cond_5

    .line 3395
    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v31

    .line 3396
    .local v31, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v31, :cond_5

    .line 3398
    const/16 v38, 0x1

    .line 3400
    .local v38, "resumeOK":Z
    :try_start_0
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v38

    .line 3406
    :goto_3
    if-nez v38, :cond_5

    .line 3407
    const/16 v29, 0x0

    goto :goto_0

    .line 3377
    .end local v24    # "controller":Landroid/app/IActivityController;
    .end local v25    # "dest":Landroid/content/ComponentName;
    .end local v29    # "foundParentInTask":Z
    .end local v31    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v34    # "parent":Lcom/android/server/am/ActivityRecord;
    .end local v38    # "resumeOK":Z
    :cond_3
    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v34, v2

    goto :goto_1

    .line 3381
    .restart local v25    # "dest":Landroid/content/ComponentName;
    .restart local v29    # "foundParentInTask":Z
    .restart local v30    # "i":I
    .restart local v34    # "parent":Lcom/android/server/am/ActivityRecord;
    .restart local v36    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v30, v30, -0x1

    goto :goto_2

    .line 3401
    .end local v30    # "i":I
    .end local v36    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v24    # "controller":Landroid/app/IActivityController;
    .restart local v31    # "next":Lcom/android/server/am/ActivityRecord;
    .restart local v38    # "resumeOK":Z
    :catch_0
    move-exception v27

    .line 3402
    .local v27, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 3403
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_3

    .line 3411
    .end local v27    # "e":Landroid/os/RemoteException;
    .end local v31    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v38    # "resumeOK":Z
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v32

    .line 3412
    .local v32, "origId":J
    move/from16 v30, v40

    .restart local v30    # "i":I
    :goto_4
    move/from16 v0, v30

    move/from16 v1, v28

    if-le v0, v1, :cond_6

    .line 3413
    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/am/ActivityRecord;

    .line 3414
    .restart local v36    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v6, "navigate-up"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3416
    const/16 p3, 0x0

    .line 3417
    const/16 p4, 0x0

    .line 3412
    add-int/lit8 v30, v30, -0x1

    goto :goto_4

    .line 3420
    .end local v36    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    if-eqz v34, :cond_8

    if-eqz v29, :cond_8

    .line 3421
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    move/from16 v35, v0

    .line 3422
    .local v35, "parentLaunchMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v26

    .line 3423
    .local v26, "destIntentFlags":I
    const/4 v2, 0x3

    move/from16 v0, v35

    if-eq v0, v2, :cond_7

    const/4 v2, 0x2

    move/from16 v0, v35

    if-eq v0, v2, :cond_7

    const/4 v2, 0x1

    move/from16 v0, v35

    if-eq v0, v2, :cond_7

    const/high16 v2, 0x4000000

    and-int v2, v2, v26

    if-eqz v2, :cond_9

    .line 3427
    :cond_7
    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 3445
    .end local v26    # "destIntentFlags":I
    .end local v35    # "parentLaunchMode":I
    :cond_8
    :goto_5
    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 3431
    .restart local v26    # "destIntentFlags":I
    .restart local v35    # "parentLaunchMode":I
    :cond_9
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v39

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 3433
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v34

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object/from16 v0, v34

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move-object/from16 v0, v34

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    const/4 v15, -0x1

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v22}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v37

    .line 3437
    .local v37, "res":I
    if-nez v37, :cond_a

    const/16 v29, 0x1

    .line 3441
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v37    # "res":I
    :goto_6
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v11, "navigate-up"

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_5

    .line 3437
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v37    # "res":I
    :cond_a
    const/16 v29, 0x0

    goto :goto_6

    .line 3438
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v37    # "res":I
    :catch_1
    move-exception v27

    .line 3439
    .restart local v27    # "e":Landroid/os/RemoteException;
    const/16 v29, 0x0

    goto :goto_6
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x0

    .line 1574
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setDrawn()V

    .line 1575
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1580
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 1581
    .local v0, "waitingActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 1582
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1583
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1585
    if-eqz v0, :cond_2

    .line 1586
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaque(Landroid/os/IBinder;Z)V

    .line 1587
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_2

    .line 1589
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v2, v3, v1}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1596
    .end local v0    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_0
    return-void

    .line 1591
    .restart local v0    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method numActivities()I
    .locals 3

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 372
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 371
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 374
    :cond_0
    return v0
.end method

.method okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 399
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public perfBoostPause()V
    .locals 4

    .prologue
    .line 4902
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    if-nez v0, :cond_0

    .line 4903
    new-instance v0, Lcom/mediatek/perfservice/PerfServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    .line 4906
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    if-eqz v0, :cond_2

    .line 4907
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_PERFSRV:Z

    if-eqz v0, :cond_1

    .line 4908
    const-string v0, "ActivityManager"

    const-string v1, "boostDisable(1) cross app"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4911
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mediatek/perfservice/IPerfServiceWrapper;->boostDisable(I)V

    .line 4912
    const-wide/16 v0, 0x40

    const-string v2, "amPerfBoost"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 4916
    :goto_0
    return-void

    .line 4914
    :cond_2
    const-string v0, "ActivityManager"

    const-string v1, "perfBoostPause, PerfService is not ready!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method releaseBackgroundResources()V
    .locals 5

    .prologue
    const/16 v4, 0x6b

    .line 3832
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3834
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3835
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 3854
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    return-void

    .line 3840
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    sget-boolean v1, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v1, :cond_2

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseBackgroundResources activtyDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " visibleBehind="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_3

    .line 3845
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v1, v2}, Landroid/app/IApplicationThread;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3848
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3850
    :cond_3
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseBackgroundResources: activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " no longer running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->backgroundResourcesReleased()V

    goto/16 :goto_0

    .line 3846
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method final releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I
    .locals 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    const/4 v11, 0x1

    .line 3652
    sget-boolean v8, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_RELEASE:Z

    if-eqz v8, :cond_0

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trying to release some activities in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    :cond_0
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v8

    div-int/lit8 v4, v8, 0x4

    .line 3654
    .local v4, "maxTasks":I
    if-ge v4, v11, :cond_1

    .line 3655
    const/4 v4, 0x1

    .line 3657
    :cond_1
    const/4 v5, 0x0

    .line 3658
    .local v5, "numReleased":I
    const/4 v7, 0x0

    .local v7, "taskNdx":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    if-lez v4, :cond_9

    .line 3659
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 3660
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3658
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3663
    :cond_3
    sget-boolean v8, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_RELEASE:Z

    if-eqz v8, :cond_4

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Looking for activities to release in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    :cond_4
    const/4 v3, 0x0

    .line 3665
    .local v3, "curNum":I
    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3666
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v0, 0x0

    .local v0, "actNdx":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_8

    .line 3667
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 3668
    .local v2, "activity":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v8, p1, :cond_7

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3669
    sget-boolean v8, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_RELEASE:Z

    if-eqz v8, :cond_5

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Destroying "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " resumed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pausing="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for reason "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    :cond_5
    invoke-virtual {p0, v2, v11, p3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 3673
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v2, :cond_6

    .line 3675
    add-int/lit8 v0, v0, -0x1

    .line 3677
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 3666
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3680
    .end local v2    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_8
    if-lez v3, :cond_2

    .line 3681
    add-int/2addr v5, v3

    .line 3682
    add-int/lit8 v4, v4, -0x1

    .line 3683
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v6, :cond_2

    .line 3685
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 3689
    .end local v0    # "actNdx":I
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "curNum":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_9
    sget-boolean v8, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_RELEASE:Z

    if-eqz v8, :cond_a

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Done releasing: did "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " activities"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    :cond_a
    return v5
.end method

.method removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 18
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 3900
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v12, "mLRUActivities"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1, v12}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3901
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v12, "mStoppingActivities"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1, v12}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3903
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v12, "mGoingToSleepActivities"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1, v12}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3905
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    const-string v12, "mWaitingVisibleActivities"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1, v12}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3907
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v12, "mFinishingActivities"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1, v12}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3910
    const/4 v4, 0x0

    .line 3913
    .local v4, "hasVisibleActivities":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v6

    .line 3914
    .local v6, "i":I
    sget-boolean v11, Lcom/android/server/am/ActivityManagerService;->DEBUG_CLEANUP:Z

    if-eqz v11, :cond_0

    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removing app "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " from history with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " entries"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3916
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v10, v11, -0x1

    .local v10, "taskNdx":I
    :goto_0
    if-ltz v10, :cond_12

    .line 3917
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    iget-object v2, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3918
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    .local v3, "activityNdx":I
    :goto_1
    if-ltz v3, :cond_11

    .line 3919
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 3920
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v6, v6, -0x1

    .line 3921
    sget-boolean v11, Lcom/android/server/am/ActivityManagerService;->DEBUG_CLEANUP:Z

    if-eqz v11, :cond_1

    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Record #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": app="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3923
    :cond_1
    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    if-ne v11, v0, :cond_9

    .line 3926
    const/4 v7, 0x0

    .line 3927
    .local v7, "needRestart":Z
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/am/ActivityStack;->mNeedKeepFocusActivity:Z

    .line 3928
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3929
    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v7, v11, Lcom/android/server/am/ProcessRecord;->inMaxOrRestore:Z

    .line 3931
    const/4 v11, 0x1

    iput v11, v8, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 3933
    if-eqz v7, :cond_2

    .line 3934
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/am/ActivityStack;->mNeedKeepFocusActivity:Z

    .line 3938
    :cond_2
    iget-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v11, :cond_3

    iget-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    if-nez v11, :cond_3

    if-eqz v7, :cond_4

    :cond_3
    iget-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v11, :cond_a

    .line 3941
    :cond_4
    const/4 v9, 0x1

    .line 3951
    .local v9, "remove":Z
    :goto_2
    if-eqz v9, :cond_c

    .line 3952
    sget-boolean v11, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_ADD_REMOVE:Z

    if-nez v11, :cond_5

    sget-boolean v11, Lcom/android/server/am/ActivityManagerService;->DEBUG_CLEANUP:Z

    if-eqz v11, :cond_6

    .line 3953
    :cond_5
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v11, "here"

    invoke-direct {v5, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3954
    .local v5, "here":Ljava/lang/RuntimeException;
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 3955
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removing activity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " from stack at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": haveState="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v8, Lcom/android/server/am/ActivityRecord;->haveState:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " stateNotNeeded="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v8, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " finishing="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " state="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3961
    .end local v5    # "here":Ljava/lang/RuntimeException;
    :cond_6
    iget-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v11, :cond_7

    .line 3962
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Force removing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": app died, no saved state"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    const/16 v11, 0x7531

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, v8, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v14, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string v14, "proc died without state saved"

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3967
    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v12, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v11, v12, :cond_7

    .line 3968
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 3971
    :cond_7
    const-string v11, "appDied"

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3994
    :cond_8
    :goto_3
    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11, v12}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3918
    .end local v7    # "needRestart":Z
    .end local v9    # "remove":Z
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 3942
    .restart local v7    # "needRestart":Z
    :cond_a
    iget v11, v8, Lcom/android/server/am/ActivityRecord;->launchCount:I

    const/4 v12, 0x2

    if-le v11, v12, :cond_b

    iget-wide v12, v8, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0xea60

    sub-long v14, v14, v16

    cmp-long v11, v12, v14

    if-lez v11, :cond_b

    .line 3946
    const/4 v9, 0x1

    .restart local v9    # "remove":Z
    goto/16 :goto_2

    .line 3949
    .end local v9    # "remove":Z
    :cond_b
    const/4 v9, 0x0

    .restart local v9    # "remove":Z
    goto/16 :goto_2

    .line 3977
    :cond_c
    sget-boolean v11, Lcom/android/server/am/ActivityManagerService;->DEBUG_PROCESSES:Z

    if-eqz v11, :cond_d

    const-string v11, "ActivityManager"

    const-string v12, "Keeping entry, setting app to null"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    :cond_d
    iget-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v11, :cond_e

    .line 3981
    const/4 v4, 0x1

    .line 3983
    :cond_e
    sget-boolean v11, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_APP:Z

    if-eqz v11, :cond_f

    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Clearing app during removeHistory for activity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    :cond_f
    const/4 v11, 0x0

    iput-object v11, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3986
    const/4 v11, 0x0

    iput-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 3987
    iget-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v11, :cond_8

    .line 3988
    sget-boolean v11, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_SAVED_STATE:Z

    if-eqz v11, :cond_10

    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "App died, clearing saved state of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3990
    :cond_10
    const/4 v11, 0x0

    iput-object v11, v8, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    goto :goto_3

    .line 3916
    .end local v7    # "needRestart":Z
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "remove":Z
    :cond_11
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_0

    .line 3999
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_12
    return v4
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4719
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, p1}, Lcom/android/server/am/ActivityStackSupervisor;->endLockTaskModeIfTaskEnding(Lcom/android/server/am/TaskRecord;)V

    .line 4720
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->removeTask(I)V

    .line 4721
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4722
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v8, p1, :cond_0

    .line 4723
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4726
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 4727
    .local v4, "taskNdx":I
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .line 4728
    .local v5, "topTaskNdx":I
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v8

    if-eqz v8, :cond_1

    if-ge v4, v5, :cond_1

    .line 4729
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 4730
    .local v2, "nextTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v8

    if-nez v8, :cond_1

    .line 4731
    invoke-virtual {v2, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 4734
    .end local v2    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4735
    invoke-virtual {p0, p1, v6}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 4737
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4738
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v8, :cond_b

    move v0, v6

    .line 4739
    .local v0, "isVoiceSession":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 4741
    :try_start_0
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v8, v9, v10}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4745
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->autoRemoveFromRecents()Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v0, :cond_4

    .line 4748
    :cond_3
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4749
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 4753
    .end local v0    # "isVoiceSession":Z
    :cond_4
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4754
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v1

    .line 4755
    .local v1, "mwProxy":Lcom/mediatek/multiwindow/MultiWindowProxy;
    if-eqz v1, :cond_5

    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v8}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isInMiniMax(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 4756
    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v8}, Lcom/mediatek/multiwindow/MultiWindowProxy;->taskRemoved(I)V

    .line 4760
    .end local v1    # "mwProxy":Lcom/mediatek/multiwindow/MultiWindowProxy;
    :cond_5
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 4761
    sget-boolean v8, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v8, :cond_6

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeTask: moving to back stack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4763
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v8

    if-nez v8, :cond_7

    .line 4764
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v9

    if-nez v9, :cond_c

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " leftTaskHistoryEmpty"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;)V

    .line 4766
    :cond_7
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    .line 4767
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4768
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4771
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4772
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getFrontFloatStacks(I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4773
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getBackFloatStacks(I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4776
    :cond_9
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v6}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusStacks(Lcom/android/server/am/ActivityStack;)V

    .line 4778
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    .line 4780
    :cond_a
    return-void

    :cond_b
    move v0, v7

    .line 4738
    goto/16 :goto_0

    :cond_c
    move v6, v7

    .line 4764
    goto :goto_2

    .line 4742
    .restart local v0    # "isVoiceSession":Z
    :catch_0
    move-exception v8

    goto/16 :goto_1
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .prologue
    .line 2985
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 2986
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_RESULTS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finishing activity token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    :cond_1
    if-nez v1, :cond_2

    .line 2991
    const/4 v0, 0x0

    .line 3020
    :goto_0
    return v0

    .line 2995
    :cond_2
    const-string v0, "app-request"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.internal.app.ChooserActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2998
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2999
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 3000
    .local v7, "index":I
    if-lez v7, :cond_3

    .line 3001
    add-int/lit8 v0, v7, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 3002
    .local v8, "prevAct":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, v2, :cond_3

    .line 3005
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .line 3007
    .local v9, "topAct":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3

    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v2, :cond_3

    iget-wide v2, v8, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v2, :cond_3

    .line 3010
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set previous process="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 3012
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v2, v8, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v2, v0, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "index":I
    .end local v8    # "prevAct":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "topAct":Lcom/android/server/am/ActivityRecord;
    :cond_3
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 3019
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3020
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method final resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;
    .locals 29
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "forceReset"    # Z

    .prologue
    .line 2536
    const/16 v28, 0x0

    .line 2538
    .local v28, "topOptions":Landroid/app/ActivityOptions;
    const/16 v21, -0x1

    .line 2539
    .local v21, "replyChainEnd":I
    const/4 v12, 0x1

    .line 2543
    .local v12, "canMoveOptions":Z
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2544
    .local v9, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 2545
    .local v20, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v22

    .line 2546
    .local v22, "rootActivityNdx":I
    add-int/lit8 v17, v20, -0x1

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    .line 2547
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/am/ActivityRecord;

    .line 2548
    .local v25, "target":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_1

    .line 2699
    .end local v25    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return-object v28

    .line 2551
    .restart local v25    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_1
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v16, v0

    .line 2552
    .local v16, "flags":I
    and-int/lit8 v2, v16, 0x2

    if-eqz v2, :cond_3

    const/4 v15, 0x1

    .line 2554
    .local v15, "finishOnTaskLaunch":Z
    :goto_1
    and-int/lit8 v2, v16, 0x40

    if-eqz v2, :cond_4

    const/4 v10, 0x1

    .line 2556
    .local v10, "allowTaskReparenting":Z
    :goto_2
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-eqz v2, :cond_5

    const/4 v13, 0x1

    .line 2559
    .local v13, "clearWhenTaskReset":Z
    :goto_3
    if-nez v15, :cond_6

    if-nez v13, :cond_6

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_6

    .line 2568
    if-gez v21, :cond_2

    .line 2569
    move/from16 v21, v17

    .line 2546
    :cond_2
    :goto_4
    add-int/lit8 v17, v17, -0x1

    goto :goto_0

    .line 2552
    .end local v10    # "allowTaskReparenting":Z
    .end local v13    # "clearWhenTaskReset":Z
    .end local v15    # "finishOnTaskLaunch":Z
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 2554
    .restart local v15    # "finishOnTaskLaunch":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 2556
    .restart local v10    # "allowTaskReparenting":Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_3

    .line 2571
    .restart local v13    # "clearWhenTaskReset":Z
    :cond_6
    if-nez v15, :cond_11

    if-nez v13, :cond_11

    if-eqz v10, :cond_11

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_11

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 2583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object v11, v2

    .line 2586
    .local v11, "bottom":Lcom/android/server/am/ActivityRecord;
    :goto_5
    if-eqz v11, :cond_9

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2591
    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v26, v0

    .line 2592
    .local v26, "targetTask":Lcom/android/server/am/TaskRecord;
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v2, :cond_7

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start pushing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out to bottom task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    :cond_7
    :goto_6
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v27, v0

    .line 2603
    .local v27, "targetTaskId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v27

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 2605
    move/from16 v18, v12

    .line 2606
    .local v18, "noOptions":Z
    if-gez v21, :cond_a

    move/from16 v24, v17

    .line 2607
    .local v24, "start":I
    :goto_7
    move/from16 v23, v24

    .local v23, "srcPos":I
    :goto_8
    move/from16 v0, v23

    move/from16 v1, v17

    if-lt v0, v1, :cond_10

    .line 2611
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v23

    if-lt v0, v2, :cond_b

    .line 2612
    move-object/from16 v3, v25

    .line 2617
    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    :goto_9
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_c

    .line 2607
    :goto_a
    add-int/lit8 v23, v23, -0x1

    goto :goto_8

    .line 2583
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "bottom":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "noOptions":Z
    .end local v23    # "srcPos":I
    .end local v24    # "start":I
    .end local v26    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v27    # "targetTaskId":I
    :cond_8
    const/4 v11, 0x0

    goto :goto_5

    .line 2595
    .restart local v11    # "bottom":Lcom/android/server/am/ActivityRecord;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v3

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v26

    .line 2597
    .restart local v26    # "targetTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 2598
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v2, :cond_7

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start pushing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out to new task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .restart local v18    # "noOptions":Z
    .restart local v27    # "targetTaskId":I
    :cond_a
    move/from16 v24, v21

    .line 2606
    goto :goto_7

    .line 2614
    .restart local v23    # "srcPos":I
    .restart local v24    # "start":I
    :cond_b
    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    goto :goto_9

    .line 2621
    :cond_c
    const/4 v12, 0x0

    .line 2622
    if-eqz v18, :cond_d

    if-nez v28, :cond_d

    .line 2623
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v28

    .line 2624
    if-eqz v28, :cond_d

    .line 2625
    const/16 v18, 0x0

    .line 2628
    :cond_d
    sget-boolean v2, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_ADD_REMOVE:Z

    if-eqz v2, :cond_e

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adding to task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    :cond_e
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v2, :cond_f

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pushing next activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out to target\'s task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2634
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/android/server/am/TaskRecord;->addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V

    .line 2636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v27

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    goto/16 :goto_a

    .line 2639
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToBottom(I)V

    .line 2644
    const/16 v21, -0x1

    .line 2645
    goto/16 :goto_4

    .end local v11    # "bottom":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "noOptions":Z
    .end local v23    # "srcPos":I
    .end local v24    # "start":I
    .end local v26    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v27    # "targetTaskId":I
    :cond_11
    if-nez p2, :cond_12

    if-nez v15, :cond_12

    if-eqz v13, :cond_1b

    .line 2651
    :cond_12
    if-eqz v13, :cond_15

    .line 2655
    add-int/lit8 v14, v20, -0x1

    .line 2663
    .local v14, "end":I
    :goto_b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 2664
    .local v19, "nowActivities":I
    move/from16 v0, v19

    if-lt v14, v0, :cond_13

    .line 2665
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetTargetTaskIfNeededLocked: activity may have been removed, original activities num = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " now activities num = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    add-int/lit8 v14, v19, -0x1

    .line 2670
    :cond_13
    move/from16 v18, v12

    .line 2671
    .restart local v18    # "noOptions":Z
    move/from16 v23, v17

    .restart local v23    # "srcPos":I
    :goto_c
    move/from16 v0, v23

    if-gt v0, v14, :cond_1a

    .line 2672
    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2673
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_17

    .line 2671
    :cond_14
    :goto_d
    add-int/lit8 v23, v23, 0x1

    goto :goto_c

    .line 2656
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "end":I
    .end local v18    # "noOptions":Z
    .end local v19    # "nowActivities":I
    .end local v23    # "srcPos":I
    :cond_15
    if-gez v21, :cond_16

    .line 2657
    move/from16 v14, v17

    .restart local v14    # "end":I
    goto :goto_b

    .line 2659
    .end local v14    # "end":I
    :cond_16
    move/from16 v14, v21

    .restart local v14    # "end":I
    goto :goto_b

    .line 2676
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v18    # "noOptions":Z
    .restart local v19    # "nowActivities":I
    .restart local v23    # "srcPos":I
    :cond_17
    const/4 v12, 0x0

    .line 2677
    if-eqz v18, :cond_18

    if-nez v28, :cond_18

    .line 2678
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v28

    .line 2679
    if-eqz v28, :cond_18

    .line 2680
    const/16 v18, 0x0

    .line 2683
    :cond_18
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v2, :cond_19

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetTaskIntendedTask: calling finishActivity on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    :cond_19
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "reset"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2686
    add-int/lit8 v14, v14, -0x1

    .line 2687
    add-int/lit8 v23, v23, -0x1

    goto :goto_d

    .line 2690
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_1a
    const/16 v21, -0x1

    .line 2691
    goto/16 :goto_4

    .line 2695
    .end local v14    # "end":I
    .end local v18    # "noOptions":Z
    .end local v19    # "nowActivities":I
    .end local v23    # "srcPos":I
    :cond_1b
    const/16 v21, -0x1

    goto/16 :goto_4
.end method

.method final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 10
    .param p1, "taskTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2829
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 2838
    .local v4, "forceReset":Z
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2842
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    const/4 v3, 0x0

    .line 2845
    .local v3, "taskFound":Z
    const/4 v9, 0x0

    .line 2848
    .local v9, "topOptions":Landroid/app/ActivityOptions;
    const/4 v5, -0x1

    .line 2850
    .local v5, "reparentInsertionPoint":I
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_2

    .line 2851
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 2853
    .local v1, "targetTask":Lcom/android/server/am/TaskRecord;
    if-ne v1, v2, :cond_1

    .line 2854
    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/ActivityStack;->resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;

    move-result-object v9

    .line 2855
    const/4 v3, 0x1

    .line 2850
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2829
    .end local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskFound":Z
    .end local v4    # "forceReset":Z
    .end local v5    # "reparentInsertionPoint":I
    .end local v6    # "i":I
    .end local v9    # "topOptions":Landroid/app/ActivityOptions;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .restart local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "taskFound":Z
    .restart local v4    # "forceReset":Z
    .restart local v5    # "reparentInsertionPoint":I
    .restart local v6    # "i":I
    .restart local v9    # "topOptions":Landroid/app/ActivityOptions;
    :cond_1
    move-object v0, p0

    .line 2857
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I

    move-result v5

    goto :goto_2

    .line 2862
    .end local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 2864
    .local v7, "taskNdx":I
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, -0x1

    .end local v7    # "taskNdx":I
    .local v8, "taskNdx":I
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 2865
    if-nez p1, :cond_3

    if-gez v8, :cond_6

    .line 2867
    :cond_3
    if-eqz v9, :cond_4

    .line 2870
    if-eqz p1, :cond_5

    .line 2871
    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2877
    :cond_4
    :goto_4
    return-object p1

    .line 2873
    :cond_5
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->abort()V

    goto :goto_4

    :cond_6
    move v7, v8

    .end local v8    # "taskNdx":I
    .restart local v7    # "taskNdx":I
    goto :goto_3
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4697
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 4701
    .local v3, "starting":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    .line 4702
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v1, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4703
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 4704
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 4705
    .local v0, "a":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4706
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 4707
    if-eqz v3, :cond_0

    if-ne v0, v3, :cond_0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_0

    .line 4708
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v6, 0x100

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 4703
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4701
    .end local v0    # "a":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 4715
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_2
    return-object v3
.end method

.method final resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 44
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1661
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_LOCKSCREEN:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->logLockScreen(Ljava/lang/String;)V

    .line 1663
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v3, :cond_1

    .line 1665
    const/4 v3, 0x0

    .line 2227
    :goto_0
    return v3

    .line 1668
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v37, v0

    .line 1669
    .local v37, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v37, :cond_2

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1673
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1676
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->cancelInitializingActivities()V

    .line 1679
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v32

    .line 1683
    .local v32, "next":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    move/from16 v43, v0

    .line 1684
    .local v43, "userLeaving":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1686
    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v39, v0

    .line 1687
    .local v39, "prevTask":Lcom/android/server/am/TaskRecord;
    :goto_1
    if-nez v32, :cond_e

    .line 1689
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1690
    const-string v3, "ActivityManager"

    const-string v4, "[BMW] Skip to resume home activity, due to this is a floating stack"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    const/4 v3, 0x0

    goto :goto_0

    .line 1686
    .end local v39    # "prevTask":Lcom/android/server/am/TaskRecord;
    :cond_5
    const/16 v39, 0x0

    goto :goto_1

    .line 1696
    .restart local v39    # "prevTask":Lcom/android/server/am/TaskRecord;
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1701
    invoke-static {}, Lcom/android/server/am/PowerOffAlarmUtility;->isAlarmBoot()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1702
    const-string v3, "ActivityManager"

    const-string v4, "Skip to resume home activity!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    const/4 v3, 0x0

    goto :goto_0

    .line 1707
    :cond_7
    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v3, :cond_8

    const-string v3, "ActivityManager"

    const-string v4, "resumeTopActivityLocked: No more activities go home"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :cond_8
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 1710
    :cond_9
    if-eqz v39, :cond_a

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    const/16 v41, 0x1

    .line 1714
    .local v41, "returnTaskType":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    move/from16 v0, v41

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveNextFloatingStackToTopLocked(ILcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1715
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1710
    .end local v41    # "returnTaskType":I
    :cond_b
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v41

    goto :goto_2

    .line 1717
    .restart local v41    # "returnTaskType":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v4, "noMoreActivities"

    move/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1723
    .end local v41    # "returnTaskType":I
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 1726
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v32

    if-ne v3, v0, :cond_12

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1733
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1734
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v43

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    .line 1735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 1740
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1741
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1742
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1743
    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v3, :cond_10

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resumeTopActivityLocked: Top activity resumed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_10
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 1745
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1748
    :cond_12
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v34, v0

    .line 1749
    .local v34, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v39, :cond_14

    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_14

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_14

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_14

    .line 1751
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 1752
    :cond_13
    move-object/from16 v0, v39

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_17

    .line 1753
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 1801
    :cond_14
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v3

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v32

    if-ne v3, v0, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1806
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1808
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1809
    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v3, :cond_15

    const-string v3, "ActivityManager"

    const-string v4, "resumeTopActivityLocked: Going to sleep and all paused"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :cond_15
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 1811
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1754
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    move-object/from16 v0, v39

    if-eq v0, v3, :cond_18

    .line 1757
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v42, v3, 0x1

    .line 1758
    .local v42, "taskNdx":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_3

    .line 1759
    .end local v42    # "taskNdx":I
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v3

    if-nez v3, :cond_19

    .line 1760
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1761
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1762
    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v3, :cond_1a

    const-string v3, "ActivityManager"

    const-string v4, "resumeTopActivityLocked: Launching home next"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :cond_1a
    if-eqz v39, :cond_1b

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-nez v3, :cond_1c

    :cond_1b
    const/16 v41, 0x1

    .line 1767
    .restart local v41    # "returnTaskType":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    move/from16 v0, v41

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveNextFloatingStackToTopLocked(ILcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1769
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1764
    .end local v41    # "returnTaskType":I
    :cond_1c
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v41

    goto :goto_4

    .line 1771
    .restart local v41    # "returnTaskType":I
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v4, "prevFinished"

    move/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_1e
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1817
    .end local v41    # "returnTaskType":I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_21

    .line 1818
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping resume of top activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is stopped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 1821
    :cond_20
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1826
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1828
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1829
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1831
    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v3, :cond_22

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resuming next, set waitingVisible false orignal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :cond_22
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 1834
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-eqz v3, :cond_23

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resuming "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v3

    if-nez v3, :cond_27

    .line 1839
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-nez v3, :cond_24

    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-nez v3, :cond_24

    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v3, :cond_25

    :cond_24
    const-string v3, "ActivityManager"

    const-string v4, "resumeTopActivityLocked: Skip resume: some activity pausing."

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    :cond_25
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 1842
    :cond_26
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1875
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->perfBoostResume()V

    .line 1880
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_2e

    const/16 v27, 0x1

    .line 1881
    .local v27, "dontWaitForPause":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    move/from16 v0, v43

    move/from16 v1, v27

    invoke-virtual {v3, v0, v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    move-result v38

    .line 1882
    .local v38, "pausing":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_29

    .line 1883
    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v3, :cond_28

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resumeTopActivityLocked: Pausing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :cond_28
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v27

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    move-result v3

    or-int v38, v38, v3

    .line 1886
    :cond_29
    if-eqz v38, :cond_2f

    .line 1887
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-nez v3, :cond_2a

    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v3, :cond_2b

    :cond_2a
    const-string v3, "ActivityManager"

    const-string v4, "resumeTopActivityLocked: Skip resume: need to start pausing"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :cond_2b
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2c

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_2c

    .line 1894
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1896
    :cond_2c
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v3, :cond_2d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 1897
    :cond_2d
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1880
    .end local v27    # "dontWaitForPause":Z
    .end local v38    # "pausing":Z
    :cond_2e
    const/16 v27, 0x0

    goto :goto_5

    .line 1902
    .restart local v27    # "dontWaitForPause":Z
    .restart local v38    # "pausing":Z
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mHaltActivityLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1903
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mHaltActivity:Z

    if-eqz v3, :cond_30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->checkIfBlockResumeTop(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1904
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACT-Because running the window animation, can\'t resumeTopActivityLocked  mAnimationPrev = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mAnimationPrev:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " prev = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mAnimationPrev:Lcom/android/server/am/ActivityRecord;

    .line 1907
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mAnimationOptions:Landroid/os/Bundle;

    .line 1908
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDidResume:Z

    .line 1909
    const/4 v3, 0x0

    monitor-exit v4

    goto/16 :goto_0

    .line 1911
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_30
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1917
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_32

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_32

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_32

    .line 1919
    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v3, :cond_31

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no-history finish of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on new resume"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "no-history"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1923
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1926
    :cond_32
    if-eqz p1, :cond_33

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_33

    .line 1927
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v3, :cond_3f

    if-eqz v32, :cond_3f

    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v3, :cond_3f

    .line 1928
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 1929
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1930
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-eqz v3, :cond_33

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resuming top, waiting visible to hide: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    :cond_33
    :goto_6
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v32

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1970
    :goto_7
    const/16 v24, 0x1

    .line 1971
    .local v24, "anim":Z
    if-eqz p1, :cond_4a

    .line 1972
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_45

    .line 1973
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_TRANSITION:Z

    if-eqz v3, :cond_34

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepare close transition: prev="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1976
    const/16 v24, 0x0

    .line 1977
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 1983
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 1984
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2012
    :goto_9
    const/16 v40, 0x0

    .line 2013
    .local v40, "resumeAnimOptions":Landroid/os/Bundle;
    if-eqz v24, :cond_4d

    .line 2014
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;

    move-result-object v36

    .line 2015
    .local v36, "opts":Landroid/app/ActivityOptions;
    if-eqz v36, :cond_35

    .line 2016
    invoke-virtual/range {v36 .. v36}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v40

    .line 2018
    :cond_35
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    .line 2023
    .end local v36    # "opts":Landroid/app/ActivityOptions;
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v30

    .line 2025
    .local v30, "lastStack":Lcom/android/server/am/ActivityStack;
    const/16 v25, 0x1

    .line 2026
    .local v25, "bNeedResume":Z
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v3

    if-eqz v3, :cond_4e

    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v3

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/multiwindow/MultiWindowProxy;->matchMinimaxRestartList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v3

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/multiwindow/MultiWindowProxy;->matchMinimaxRestartList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mPendingRestoreMax:Z

    if-nez v3, :cond_4e

    :cond_36
    const/16 v25, 0x1

    .line 2030
    :goto_b
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_66

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_66

    if-eqz v25, :cond_66

    .line 2031
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-eqz v3, :cond_37

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resume running: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2037
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 2039
    if-nez v30, :cond_4f

    const/16 v29, 0x0

    .line 2041
    .local v29, "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    :goto_c
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v31, v0

    .line 2043
    .local v31, "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 2045
    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v3, :cond_38

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moving to RESUMED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (in existing)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    :cond_38
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v32

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2047
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2048
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 2049
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 2050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2051
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2052
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 2056
    const/16 v35, 0x1

    .line 2057
    .local v35, "notUpdated":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 2058
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_50

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_d
    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v26

    .line 2061
    .local v26, "config":Landroid/content/res/Configuration;
    if-eqz v26, :cond_39

    .line 2062
    const/4 v3, 0x1

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 2064
    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v3

    if-nez v3, :cond_51

    const/16 v35, 0x1

    .line 2067
    .end local v26    # "config":Landroid/content/res/Configuration;
    :cond_3a
    :goto_e
    if-eqz v35, :cond_54

    .line 2073
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v33

    .line 2074
    .local v33, "nextNext":Lcom/android/server/am/ActivityRecord;
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-nez v3, :cond_3b

    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v3, :cond_3c

    :cond_3b
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity config changed during resume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", new next: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    :cond_3c
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_3d

    .line 2079
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 2081
    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 2082
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2083
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v3, :cond_3e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 2084
    :cond_3e
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1941
    .end local v24    # "anim":Z
    .end local v25    # "bNeedResume":Z
    .end local v29    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v30    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v31    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v33    # "nextNext":Lcom/android/server/am/ActivityRecord;
    .end local v35    # "notUpdated":Z
    .end local v40    # "resumeAnimOptions":Landroid/os/Bundle;
    :cond_3f
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_41

    .line 1942
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1943
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-eqz v3, :cond_33

    const-string v4, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not waiting for visible to hide: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", waitingVisible="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_40

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_f
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", nowVisible="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_40
    const/4 v3, 0x0

    goto :goto_f

    .line 1948
    :cond_41
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-eqz v3, :cond_33

    const-string v4, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previous already visible but still waiting to hide: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", waitingVisible="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_42

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_10
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", nowVisible="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_42
    const/4 v3, 0x0

    goto :goto_10

    .line 1962
    :catch_0
    move-exception v28

    .line 1963
    .local v28, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed trying to unstop package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1979
    .end local v28    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v24    # "anim":Z
    :cond_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_44

    const/4 v3, 0x7

    :goto_11
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_8

    :cond_44
    const/16 v3, 0x9

    goto :goto_11

    .line 1986
    :cond_45
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_TRANSITION:Z

    if-eqz v3, :cond_46

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepare open transition: prev="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1988
    const/16 v24, 0x0

    .line 1989
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_9

    .line 1991
    :cond_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_48

    const/4 v3, 0x6

    :goto_12
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_9

    :cond_48
    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_49

    const/16 v3, 0x10

    goto :goto_12

    :cond_49
    const/16 v3, 0x8

    goto :goto_12

    .line 2003
    :cond_4a
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_TRANSITION:Z

    if-eqz v3, :cond_4b

    const-string v3, "ActivityManager"

    const-string v4, "Prepare open transition: no previous"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    :cond_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 2005
    const/16 v24, 0x0

    .line 2006
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_9

    .line 2008
    :cond_4c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_9

    .line 2020
    .restart local v40    # "resumeAnimOptions":Landroid/os/Bundle;
    :cond_4d
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto/16 :goto_a

    .line 2026
    .restart local v25    # "bNeedResume":Z
    .restart local v30    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_4e
    const/16 v25, 0x0

    goto/16 :goto_b

    .line 2039
    :cond_4f
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v29, v0

    goto/16 :goto_c

    .line 2058
    .restart local v29    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v31    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v35    # "notUpdated":Z
    :cond_50
    const/4 v3, 0x0

    goto/16 :goto_d

    .line 2064
    .restart local v26    # "config":Landroid/content/res/Configuration;
    :cond_51
    const/16 v35, 0x0

    goto/16 :goto_e

    .line 2086
    .end local v26    # "config":Landroid/content/res/Configuration;
    .restart local v33    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_52
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v3, :cond_53

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 2087
    :cond_53
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2093
    .end local v33    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_54
    :try_start_3
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v3

    if-eqz v3, :cond_5b

    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mPendingRestoreMax:Z

    if-eqz v3, :cond_5b

    .line 2095
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-nez v3, :cond_5a

    const/4 v9, 0x1

    .line 2096
    .local v9, "toMax":Z
    :goto_13
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2097
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2098
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 2099
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 2105
    if-nez v9, :cond_56

    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v3

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/multiwindow/MultiWindowProxy;->matchDisableFloatActivityList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_55

    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v3

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/multiwindow/MultiWindowProxy;->matchDisableFloatPkgList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 2107
    :cond_55
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveFloatingStackToAppStackLocked(Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;

    .line 2108
    const/4 v9, 0x1

    .line 2110
    :cond_56
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v3, :cond_57

    .line 2111
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BMW] ACT-AM_RESTORE_ACTIVITY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " task:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    :cond_57
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, v32

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityRecord;->scheduleRestoreActivity(Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Z)V

    .line 2114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2180
    .end local v9    # "toMax":Z
    :cond_58
    :goto_14
    const/4 v3, 0x1

    :try_start_4
    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 2181
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2191
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2226
    .end local v29    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v31    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v35    # "notUpdated":Z
    :goto_15
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v3, :cond_59

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 2227
    :cond_59
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2095
    .restart local v29    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v31    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v35    # "notUpdated":Z
    :cond_5a
    const/4 v9, 0x0

    goto/16 :goto_13

    .line 2117
    :cond_5b
    :try_start_5
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    .line 2118
    .local v23, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v23, :cond_5d

    .line 2119
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 2120
    .local v22, "N":I
    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_5d

    if-lez v22, :cond_5d

    .line 2121
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_RESULTS:Z

    if-eqz v3, :cond_5c

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delivering results to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    :cond_5c
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v23

    invoke-interface {v3, v4, v0}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 2128
    .end local v22    # "N":I
    :cond_5d
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v3, :cond_5e

    .line 2129
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 2132
    :cond_5e
    const/16 v3, 0x7537

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v32

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2136
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v3, :cond_5f

    .line 2137
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACT-AM_RESUME_ACTIVITY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " task:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    :cond_5f
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2142
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 2143
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 2144
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 2145
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v6

    move-object/from16 v0, v40

    invoke-interface {v3, v4, v5, v6, v0}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    .line 2148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 2150
    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v3, :cond_58

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resumeTopActivityLocked: Resumed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_14

    .line 2153
    .end local v23    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_1
    move-exception v28

    .line 2155
    .local v28, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v3, :cond_60

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resume failed; resetting state to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    :cond_60
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2158
    if-eqz v30, :cond_61

    .line 2159
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2161
    :cond_61
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restarting because process died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_64

    .line 2163
    const/4 v3, 0x1

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 2172
    :cond_62
    :goto_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2173
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v3, :cond_63

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 2174
    :cond_63
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2164
    :cond_64
    if-eqz v30, :cond_62

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 2166
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v32

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v32

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v14

    move-object/from16 v0, v32

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move/from16 v16, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move/from16 v17, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move/from16 v18, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v10 .. v21}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    goto :goto_16

    .line 2182
    .end local v28    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v28

    .line 2185
    .restart local v28    # "e":Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown during resume of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2186
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "resume-exception"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2188
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v3, :cond_65

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 2189
    :cond_65
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2195
    .end local v28    # "e":Ljava/lang/Exception;
    .end local v29    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v31    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v35    # "notUpdated":Z
    :cond_66
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v3

    if-eqz v3, :cond_67

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_67

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_67

    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v3

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/multiwindow/MultiWindowProxy;->matchMinimaxRestartList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mPendingRestoreMax:Z

    if-eqz v3, :cond_67

    .line 2200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2203
    :cond_67
    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_6b

    .line 2204
    const/4 v3, 0x1

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 2217
    :cond_68
    :goto_17
    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v3, :cond_69

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resumeTopActivityLocked: Restarting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    :cond_69
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v3

    if-eqz v3, :cond_6a

    .line 2221
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mPendingRestoreMax:Z

    .line 2223
    :cond_6a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_15

    .line 2207
    :cond_6b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v32

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v32

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v14

    move-object/from16 v0, v32

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move/from16 v16, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move/from16 v17, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move/from16 v18, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v10 .. v21}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    .line 2215
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-eqz v3, :cond_68

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restarting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1961
    .end local v24    # "anim":Z
    .end local v25    # "bNeedResume":Z
    .end local v30    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v40    # "resumeAnimOptions":Landroid/os/Bundle;
    :catch_3
    move-exception v3

    goto/16 :goto_7
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1634
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1640
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 1657
    :goto_0
    return v0

    .line 1645
    :cond_0
    const/4 v0, 0x0

    .line 1648
    .local v0, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    .line 1649
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    if-ne v2, v4, :cond_1

    .line 1650
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    .line 1651
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    .line 1653
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1655
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v3, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    throw v2
.end method

.method final safelyDestroyActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3640
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3641
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pausing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    .line 3646
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 3
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3600
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3601
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3602
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3603
    return-void
.end method

.method public final screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "who"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    .line 831
    sget-boolean v1, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_SCREENSHOTS:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenshotActivities: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v1, :cond_2

    .line 833
    sget-boolean v1, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_SCREENSHOTS:Z

    if-eqz v1, :cond_1

    const-string v1, "ActivityManager"

    const-string v2, "\tNo display"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_1
    :goto_0
    return-object v0

    .line 837
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 840
    sget-boolean v1, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_SCREENSHOTS:Z

    if-eqz v1, :cond_1

    const-string v1, "ActivityManager"

    const-string v2, "\tHome stack"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 844
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v1, Lcom/android/server/am/ActivityManagerService;->mThumbnailWidth:I

    .line 845
    .local v3, "w":I
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v1, Lcom/android/server/am/ActivityManagerService;->mThumbnailHeight:I

    .line 846
    .local v4, "h":I
    if-lez v3, :cond_5

    .line 847
    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_SCREENSHOTS:Z

    if-eqz v0, :cond_4

    const-string v0, "ActivityManager"

    const-string v1, "\tTaking screenshot"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v2, 0x0

    sget-boolean v5, Lcom/android/server/am/ActivityStack;->SCREENSHOT_FORCE_565:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 851
    :cond_5
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid thumbnail dimensions: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "resultCode"    # I
    .param p6, "data"    # Landroid/content/Intent;

    .prologue
    .line 2883
    if-lez p1, :cond_0

    .line 2884
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    move v1, p1

    move-object v3, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 2888
    :cond_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_RESULTS:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send activity result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : who="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " req="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p2, :cond_2

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2

    .line 2893
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2894
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ResultInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2896
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1, v7}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2904
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :goto_0
    return-void

    .line 2898
    :catch_0
    move-exception v6

    .line 2899
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2903
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x0

    move-object v0, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method setLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const-wide/16 v2, 0x0

    .line 758
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 759
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    .line 760
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 761
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->startLaunchTraces()V

    .line 762
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 765
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->startLaunchTraces()V

    .line 766
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    goto :goto_0
.end method

.method setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3872
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3873
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 3875
    :cond_0
    return-void
.end method

.method final shouldUpRecreateTaskLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 6
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destAffinity"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3333
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3364
    :cond_0
    :goto_0
    return v2

    .line 3341
    :cond_1
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->isDocument()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3344
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v4

    if-nez v4, :cond_0

    .line 3349
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3350
    .local v1, "taskIdx":I
    if-gtz v1, :cond_2

    .line 3351
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 3352
    goto :goto_0

    .line 3354
    :cond_2
    if-eqz v1, :cond_0

    .line 3358
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 3359
    .local v0, "prevTask":Lcom/android/server/am/TaskRecord;
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v0    # "prevTask":Lcom/android/server/am/TaskRecord;
    .end local v1    # "taskIdx":I
    :cond_3
    move v2, v3

    .line 3364
    goto :goto_0
.end method

.method final startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V
    .locals 24
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "doResume"    # Z
    .param p4, "keepCurTransition"    # Z
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    .line 2325
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    .line 2326
    .local v18, "rTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v22, v0

    .line 2328
    .local v22, "taskId":I
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    .line 2332
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;)V

    .line 2333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 2335
    :cond_1
    const/16 v21, 0x0

    .line 2336
    .local v21, "task":Lcom/android/server/am/TaskRecord;
    if-nez p2, :cond_a

    .line 2338
    const/16 v20, 0x1

    .line 2339
    .local v20, "startIt":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v23, v3, -0x1

    .local v23, "taskNdx":I
    :goto_0
    if-ltz v23, :cond_a

    .line 2340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "task":Lcom/android/server/am/TaskRecord;
    check-cast v21, Lcom/android/server/am/TaskRecord;

    .line 2341
    .restart local v21    # "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_3

    .line 2339
    :cond_2
    :goto_1
    add-int/lit8 v23, v23, -0x1

    goto :goto_0

    .line 2345
    :cond_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v21

    if-ne v0, v3, :cond_9

    .line 2349
    if-nez v20, :cond_a

    .line 2350
    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_ADD_REMOVE:Z

    if-eqz v3, :cond_4

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "here"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2352
    :cond_4
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    .line 2353
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 2355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v3, :cond_5

    .line 2356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Ljava/util/ArrayList;)V

    .line 2359
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    .line 2367
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2499
    .end local v20    # "startIt":Z
    .end local v23    # "taskNdx":I
    :cond_6
    :goto_4
    return-void

    .line 2359
    .restart local v20    # "startIt":Z
    .restart local v23    # "taskNdx":I
    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    :cond_8
    const/4 v13, 0x0

    goto :goto_3

    .line 2371
    :cond_9
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-lez v3, :cond_2

    .line 2372
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 2383
    .end local v20    # "startIt":Z
    .end local v23    # "taskNdx":I
    :cond_a
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v21

    if-ne v0, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_b

    .line 2384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2385
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_USER_LEAVING:Z

    if-eqz v3, :cond_b

    const-string v3, "ActivityManager"

    const-string v4, "startActivity() behind front, mUserLeaving=false"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    .line 2392
    sget-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_ADD_REMOVE:Z

    if-eqz v3, :cond_c

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to stack to task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "here"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2394
    :cond_c
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    .line 2395
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 2397
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 2399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v3, :cond_d

    .line 2400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Ljava/util/ArrayList;)V

    .line 2403
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v3

    if-lez v3, :cond_21

    .line 2407
    :cond_e
    move/from16 v19, p2

    .line 2408
    .local v19, "showStartingIcon":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    .line 2409
    .local v17, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v17, :cond_f

    .line 2410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    check-cast v17, Lcom/android/server/am/ProcessRecord;

    .line 2412
    .restart local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_f
    if-eqz v17, :cond_10

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_11

    .line 2413
    :cond_10
    const/16 v19, 0x1

    .line 2415
    :cond_11
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_TRANSITION:Z

    if-eqz v3, :cond_12

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepare open transition: starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    :cond_12
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_16

    .line 2418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    move/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2428
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_19

    const/4 v10, 0x1

    :goto_6
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v13, :cond_1a

    const/4 v13, 0x1

    :goto_7
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    .line 2432
    const/4 v15, 0x1

    .line 2433
    .local v15, "doShow":Z
    if-eqz p2, :cond_1c

    .line 2439
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_13

    .line 2440
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 2441
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_1b

    const/4 v15, 0x1

    .line 2447
    :cond_13
    :goto_8
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_1d

    .line 2450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2451
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2491
    .end local v15    # "doShow":Z
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v19    # "showStartingIcon":Z
    :cond_14
    :goto_9
    if-eqz p3, :cond_6

    .line 2493
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->keepStickyStackLocked()V

    .line 2497
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    goto/16 :goto_4

    .line 2421
    .restart local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v19    # "showStartingIcon":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p2, :cond_18

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_17

    const/16 v3, 0x10

    :goto_a
    move/from16 v0, p4

    invoke-virtual {v4, v3, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2421
    :cond_17
    const/16 v3, 0x8

    goto :goto_a

    :cond_18
    const/4 v3, 0x6

    goto :goto_a

    .line 2428
    :cond_19
    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_1a
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 2441
    .restart local v15    # "doShow":Z
    :cond_1b
    const/4 v15, 0x0

    goto :goto_8

    .line 2443
    :cond_1c
    if-eqz p5, :cond_13

    new-instance v3, Landroid/app/ActivityOptions;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_13

    .line 2445
    const/4 v15, 0x0

    goto :goto_8

    .line 2452
    :cond_1d
    if-eqz v15, :cond_14

    .line 2457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v16, v0

    .line 2458
    .local v16, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v16, :cond_1e

    .line 2461
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v4, :cond_1f

    .line 2462
    const/16 v16, 0x0

    .line 2469
    :cond_1e
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    if-eqz v16, :cond_20

    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_c
    move/from16 v14, v19

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    .line 2475
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    goto/16 :goto_9

    .line 2465
    :cond_1f
    move-object/from16 v0, v16

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_1e

    .line 2466
    const/16 v16, 0x0

    goto :goto_b

    .line 2469
    :cond_20
    const/4 v13, 0x0

    goto :goto_c

    .line 2480
    .end local v15    # "doShow":Z
    .end local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v19    # "showStartingIcon":Z
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_22

    const/4 v10, 0x1

    :goto_d
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v13, :cond_23

    const/4 v13, 0x1

    :goto_e
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    .line 2484
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2485
    const/16 p5, 0x0

    goto/16 :goto_9

    .line 2480
    :cond_22
    const/4 v10, 0x0

    goto :goto_d

    :cond_23
    const/4 v13, 0x0

    goto :goto_e
.end method

.method final startPausingLocked(ZZZZ)Z
    .locals 11
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Z
    .param p4, "dontWait"    # Z

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    .line 873
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to pause when pause is already pending for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 875
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Z)V

    .line 878
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 879
    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_2

    .line 880
    if-nez p3, :cond_1

    .line 882
    const-string v0, "ActivityManager"

    const-string v2, "Trying to pause when nothing is resumed"

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 885
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 887
    :cond_1
    const/4 v0, 0x0

    .line 988
    :goto_0
    return v0

    .line 890
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_3

    .line 892
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->pauseChildStacks(Lcom/android/server/am/ActivityRecord;ZZZZ)V

    .line 895
    :cond_3
    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v0, :cond_d

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moving to PAUSING: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_4
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 898
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 899
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 900
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_e

    :cond_5
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 902
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 903
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 904
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 905
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 906
    .local v10, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mHasRecents:Z

    if-eqz v0, :cond_8

    if-eqz v10, :cond_6

    iget-boolean v0, v10, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_6

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v0, v2, :cond_6

    if-eqz p2, :cond_8

    .line 908
    :cond_6
    const-wide/16 v2, 0x1040

    const-string v0, "amScreenCapture"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 909
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    if-nez v0, :cond_7

    .line 910
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 912
    :cond_7
    const-wide/16 v2, 0x1040

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 916
    :cond_8
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->stopFullyDrawnTraceIfNeeded()V

    .line 918
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 920
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_f

    .line 921
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-eqz v0, :cond_9

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enqueueing pending pause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_9
    const/16 v0, 0x753d

    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 927
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v0, :cond_a

    .line 928
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACT-AM_PAUSE_ACTIVITY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 931
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v4, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v6, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move v5, p1

    move v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_b

    .line 949
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->acquireLaunchWakelock()V

    .line 952
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_13

    .line 957
    if-nez p2, :cond_10

    .line 958
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 963
    :cond_c
    :goto_4
    if-eqz p4, :cond_11

    .line 966
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Z)V

    .line 967
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 896
    .end local v10    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_d
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-eqz v0, :cond_4

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start pausing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 900
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 933
    .restart local v10    # "next":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v8

    .line 935
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    const-string v2, "Exception thrown during pause"

    invoke-static {v0, v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 938
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_3

    .line 941
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 942
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 943
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_3

    .line 960
    :cond_10
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-eqz v0, :cond_c

    const-string v0, "ActivityManager"

    const-string v2, "Key dispatch not paused for screen off"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 973
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 974
    .local v9, "msg":Landroid/os/Message;
    iput-object v1, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 975
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    .line 976
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 977
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-eqz v0, :cond_12

    const-string v0, "ActivityManager"

    const-string v2, "Waiting for pause to complete..."

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_12
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 984
    .end local v9    # "msg":Landroid/os/Message;
    :cond_13
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    if-eqz v0, :cond_14

    const-string v0, "ActivityManager"

    const-string v2, "Activity not running, resuming next."

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_14
    if-nez p3, :cond_15

    .line 986
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 988
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2927
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    .line 2930
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_3

    .line 2931
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2932
    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v0, :cond_2

    .line 2933
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no-history finish of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const-string v4, "no-history"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2944
    :cond_3
    :goto_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_8

    .line 2945
    const-string v0, "stopActivity"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 2946
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 2948
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2949
    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v0, :cond_4

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving to STOPPING: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (stop requested)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    :cond_4
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2952
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    if-eqz v0, :cond_5

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    :cond_5
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_6

    .line 2955
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2957
    :cond_6
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 2958
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2959
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 2961
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2962
    .local v7, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2977
    .end local v7    # "msg":Landroid/os/Message;
    :cond_8
    :goto_1
    return-void

    .line 2938
    :cond_9
    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v0, :cond_3

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not finishing noHistory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on stop because we\'re just sleeping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2963
    :catch_0
    move-exception v6

    .line 2967
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    const-string v1, "Exception thrown during pause"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2969
    iput-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2970
    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_STATES:Z

    if-eqz v0, :cond_a

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop failed; moving to STOPPED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    :cond_a
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2972
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v0, :cond_8

    .line 2973
    const-string v0, "stop-except"

    invoke-virtual {p0, p1, v8, v0}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    goto :goto_1
.end method

.method final switchUserLocked(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 698
    iget v3, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    if-ne v3, p1, :cond_1

    .line 726
    :cond_0
    return-void

    .line 701
    :cond_1
    iput p1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 704
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 705
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 706
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 707
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget v3, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->isCurrentProfileLocked(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 708
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v3, :cond_2

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchUserLocked: stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " moving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to top"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 711
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v3, :cond_3

    .line 714
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Ljava/util/ArrayList;)V

    .line 717
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 720
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 476
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 477
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 478
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_0

    .line 482
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :goto_1
    return-object v0

    .line 476
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 482
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityStack{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tasks}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final topActivity()Lcom/android/server/am/ActivityRecord;
    .locals 5

    .prologue
    .line 455
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_2

    .line 456
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 457
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 458
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 459
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_0

    .line 464
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_2
    return-object v2

    .line 457
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 455
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 464
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    .prologue
    .line 437
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_3

    .line 438
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 439
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v5, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, p2, :cond_1

    .line 437
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 442
    :cond_1
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 443
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 444
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 446
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_2

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v5, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 451
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_2
    return-object v2

    .line 443
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "i":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 451
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 404
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 405
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 406
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 410
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v0

    .line 404
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 410
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 414
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    .line 415
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 416
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 417
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 418
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 419
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_0

    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-nez v5, :cond_0

    if-eq v2, p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 424
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_2
    return-object v2

    .line 417
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 414
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 424
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method final topTask()Lcom/android/server/am/TaskRecord;
    .locals 3

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 469
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 472
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unhandledBackLocked()V
    .locals 9

    .prologue
    .line 4600
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 4601
    .local v8, "top":I
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing unhandledBack(): top activity at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4603
    :cond_0
    if-ltz v8, :cond_1

    .line 4604
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4605
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 4606
    .local v7, "activityTop":I
    if-lez v7, :cond_1

    .line 4607
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "unhandled-back"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4611
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityTop":I
    :cond_1
    return-void
.end method

.method final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 499
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 500
    .local v0, "hadit":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    return v0
.end method

.method updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toFront"    # Z

    .prologue
    .line 4015
    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v0, :cond_0

    .line 4016
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 4020
    if-nez p2, :cond_0

    .line 4021
    iget-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 4024
    :cond_0
    return-void
.end method

.method final updateTransitLocked(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4003
    if-eqz p2, :cond_0

    .line 4004
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4005
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_1

    .line 4006
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 4011
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4012
    return-void

    .line 4008
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method final validateAppTokensLocked()V
    .locals 11

    .prologue
    .line 2502
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2503
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 2504
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2505
    .local v4, "numTasks":I
    const/4 v7, 0x0

    .local v7, "taskNdx":I
    :goto_0
    if-ge v7, v4, :cond_2

    .line 2506
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 2507
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2508
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2505
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2511
    :cond_1
    new-instance v2, Lcom/android/server/wm/TaskGroup;

    invoke-direct {v2}, Lcom/android/server/wm/TaskGroup;-><init>()V

    .line 2512
    .local v2, "group":Lcom/android/server/wm/TaskGroup;
    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v8, v2, Lcom/android/server/wm/TaskGroup;->taskId:I

    .line 2513
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2514
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2515
    .local v3, "numActivities":I
    const/4 v1, 0x0

    .local v1, "activityNdx":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 2516
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2517
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v2, Lcom/android/server/wm/TaskGroup;->tokens:Ljava/util/ArrayList;

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2515
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2520
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "group":Lcom/android/server/wm/TaskGroup;
    .end local v3    # "numActivities":I
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v9, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/WindowManagerService;->validateAppTokens(ILjava/util/List;)V

    .line 2521
    return-void
.end method

.method willActivityBeVisibleLocked(Landroid/os/IBinder;)Z
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4464
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_4

    .line 4465
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4466
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_3

    .line 4467
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4468
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-ne v4, p1, :cond_1

    move v6, v5

    .line 4482
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_0
    :goto_2
    return v6

    .line 4471
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    :cond_1
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_0

    .line 4466
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 4464
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4476
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_4
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 4477
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 4480
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_5

    const-string v4, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "willActivityBeVisibleLocked: Returning false, would have returned true for r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4482
    :cond_5
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_6

    move v4, v5

    :goto_3
    move v6, v4

    goto :goto_2

    :cond_6
    move v4, v6

    goto :goto_3
.end method
