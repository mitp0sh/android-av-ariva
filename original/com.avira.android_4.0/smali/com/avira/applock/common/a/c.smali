.class public final Lcom/avira/applock/common/a/c;
.super Lcom/avira/applock/common/a/a;
.source "SourceFile"


# instance fields
.field a:Lcom/avira/applock/common/a/b;

.field b:Lcom/avira/applock/common/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/avira/applock/common/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/avira/applock/common/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/avira/applock/common/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/avira/applock/common/a/c;)V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/avira/applock/common/a/c;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/applock/common/a/b;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/avira/applock/common/a/c;->a:Lcom/avira/applock/common/a/b;

    .line 73
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lcom/avira/applock/common/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 27
    new-instance v0, Lcom/avira/applock/common/a/d;

    invoke-direct {v0, p0}, Lcom/avira/applock/common/a/d;-><init>(Lcom/avira/applock/common/a/c;)V

    iput-object v0, p0, Lcom/avira/applock/common/a/c;->b:Lcom/avira/applock/common/a/b;

    .line 64
    iget-object v0, p0, Lcom/avira/applock/common/a/c;->b:Lcom/avira/applock/common/a/b;

    invoke-super {p0, v0}, Lcom/avira/applock/common/a/a;->a(Lcom/avira/applock/common/a/b;)V

    .line 65
    sget v0, Lcom/avira/applock/f;->internet_go_to_settings:I

    invoke-virtual {p0, v0}, Lcom/avira/applock/common/a/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/avira/applock/c;->settings_icon:I

    invoke-virtual {p0, v0, v1}, Lcom/avira/applock/common/a/c;->a(Ljava/lang/String;I)V

    .line 67
    return-void
.end method
