.class final Landroid/support/v7/app/n;
.super Landroid/support/v7/app/ActionBar;
.source "SourceFile"


# instance fields
.field final a:Landroid/app/Activity;

.field final b:Landroid/support/v7/app/a;

.field final c:Landroid/app/ActionBar;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/a;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/n;->d:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Landroid/support/v7/app/n;->a:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Landroid/support/v7/app/n;->b:Landroid/support/v7/app/a;

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/app/ActionBar;

    .line 43
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
