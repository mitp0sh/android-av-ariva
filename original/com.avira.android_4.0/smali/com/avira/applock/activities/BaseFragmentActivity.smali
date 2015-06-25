.class public Lcom/avira/applock/activities/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onResume()V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/applock/g/a;->a(Ljava/lang/String;)V

    .line 24
    return-void
.end method
