.class final Landroid/support/v13/app/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Bundle;

.field private d:Landroid/app/Fragment;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/support/v13/app/c;->a:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Landroid/support/v13/app/c;->b:Ljava/lang/Class;

    .line 62
    iput-object p3, p0, Landroid/support/v13/app/c;->c:Landroid/os/Bundle;

    .line 63
    return-void
.end method

.method static synthetic a(Landroid/support/v13/app/c;)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v13/app/c;->d:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v13/app/c;Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroid/support/v13/app/c;->d:Landroid/app/Fragment;

    return-object p1
.end method

.method static synthetic b(Landroid/support/v13/app/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v13/app/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v13/app/c;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v13/app/c;->b:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v13/app/c;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v13/app/c;->c:Landroid/os/Bundle;

    return-object v0
.end method
