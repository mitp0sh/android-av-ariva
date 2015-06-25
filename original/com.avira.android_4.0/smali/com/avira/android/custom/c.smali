.class final Lcom/avira/android/custom/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/utilities/y;


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lcom/avira/applock/common/a/b;

.field final synthetic c:Lcom/avira/android/custom/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/custom/BaseFragmentActivity;Ljava/lang/Class;Lcom/avira/applock/common/a/b;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/avira/android/custom/c;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    iput-object p2, p0, Lcom/avira/android/custom/c;->a:Ljava/lang/Class;

    iput-object p3, p0, Lcom/avira/android/custom/c;->b:Lcom/avira/applock/common/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/custom/c;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v2, p0, Lcom/avira/android/custom/c;->a:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/avira/android/custom/c;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 148
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    .line 149
    iget-object v0, p0, Lcom/avira/android/custom/c;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v1, 0x7f0e01e4

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/custom/c;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 152
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 157
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    .line 158
    new-instance v0, Lcom/avira/applock/common/a/a;

    iget-object v1, p0, Lcom/avira/android/custom/c;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v2, 0x7f080159

    invoke-virtual {v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/custom/c;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v3, 0x7f080157

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/applock/common/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    .line 162
    iget-object v1, p0, Lcom/avira/android/custom/c;->b:Lcom/avira/applock/common/a/b;

    invoke-virtual {v0, v1}, Lcom/avira/applock/common/a/a;->a(Lcom/avira/applock/common/a/b;)V

    .line 163
    iget-object v1, p0, Lcom/avira/android/custom/c;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/applock/common/a/a;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 164
    return-void
.end method
