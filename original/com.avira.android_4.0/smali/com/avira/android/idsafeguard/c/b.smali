.class public final Lcom/avira/android/idsafeguard/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;


# instance fields
.field private final f:Lcom/avira/android/custom/BaseFragmentActivity;

.field private final g:Lcom/avira/android/idsafeguard/b/c;

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "breachNameExtra"

    sput-object v0, Lcom/avira/android/idsafeguard/c/b;->a:Ljava/lang/String;

    .line 21
    const-string v0, "breachDateExtra"

    sput-object v0, Lcom/avira/android/idsafeguard/c/b;->b:Ljava/lang/String;

    .line 22
    const-string v0, "breachDetailExtra"

    sput-object v0, Lcom/avira/android/idsafeguard/c/b;->c:Ljava/lang/String;

    .line 23
    const-string v0, "breachIdExtra"

    sput-object v0, Lcom/avira/android/idsafeguard/c/b;->d:Ljava/lang/String;

    .line 24
    const-string v0, "breachEmailExtra"

    sput-object v0, Lcom/avira/android/idsafeguard/c/b;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/avira/android/idsafeguard/b/c;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/android/idsafeguard/c/b;->h:I

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/avira/android/idsafeguard/c/b;->i:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/avira/android/idsafeguard/c/b;->g:Lcom/avira/android/idsafeguard/b/c;

    .line 43
    invoke-interface {p1}, Lcom/avira/android/idsafeguard/b/c;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/idsafeguard/c/b;->f:Lcom/avira/android/custom/BaseFragmentActivity;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 51
    sget-object v0, Lcom/avira/android/idsafeguard/c/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    sget-object v1, Lcom/avira/android/idsafeguard/c/b;->b:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 53
    sget-object v1, Lcom/avira/android/idsafeguard/c/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    sget-object v4, Lcom/avira/android/idsafeguard/c/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/avira/android/idsafeguard/c/b;->h:I

    .line 56
    sget-object v4, Lcom/avira/android/idsafeguard/c/b;->e:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/avira/android/idsafeguard/c/b;->i:Ljava/lang/String;

    .line 60
    iget v4, p0, Lcom/avira/android/idsafeguard/c/b;->h:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/avira/android/idsafeguard/c/b;->i:Ljava/lang/String;

    .line 66
    :cond_0
    iget-object v4, p0, Lcom/avira/android/idsafeguard/c/b;->f:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v4}, Lcom/avira/android/custom/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0802e9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/avira/android/idsafeguard/c/b;->f:Lcom/avira/android/custom/BaseFragmentActivity;

    const v6, 0x20010

    invoke-static {v5, v2, v3, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v7

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/avira/android/idsafeguard/c/b;->g:Lcom/avira/android/idsafeguard/b/c;

    invoke-interface {v2, v0}, Lcom/avira/android/idsafeguard/b/c;->a(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/b;->g:Lcom/avira/android/idsafeguard/b/c;

    invoke-interface {v0, v1}, Lcom/avira/android/idsafeguard/b/c;->b(Ljava/lang/String;)V

    .line 68
    return-void
.end method
