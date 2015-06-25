.class public final Lcom/avira/applock/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/app/ActivityManager;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, ""

    sput-object v0, Lcom/avira/applock/g/a;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/avira/applock/b/c;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    sget-object v0, Lcom/avira/applock/g/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avira/applock/g/a;->a:Landroid/app/ActivityManager;

    if-nez v0, :cond_1

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/applock/g/a;->b:Ljava/lang/String;

    .line 43
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/avira/applock/g/a;->a:Landroid/app/ActivityManager;

    .line 46
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_3

    .line 48
    sget-object v0, Lcom/avira/applock/g/a;->a:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 49
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_2
    :goto_0
    new-instance v2, Lcom/avira/applock/b/c;

    invoke-direct {v2, v1, v0}, Lcom/avira/applock/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 54
    :cond_3
    sget-object v0, Lcom/avira/applock/g/a;->a:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 55
    const-string v0, ""

    .line 58
    sget-object v2, Lcom/avira/applock/g/a;->b:Ljava/lang/String;

    if-ne v1, v2, :cond_2

    .line 60
    sget-object v0, Lcom/avira/applock/g/a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    sput-object p0, Lcom/avira/applock/g/a;->c:Ljava/lang/String;

    .line 76
    return-void
.end method
