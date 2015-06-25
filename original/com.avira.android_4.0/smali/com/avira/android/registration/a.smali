.class final Lcom/avira/android/registration/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/custom/m;


# instance fields
.field final synthetic a:Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;


# direct methods
.method constructor <init>(Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/avira/android/registration/a;->a:Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/avira/android/registration/a;->a:Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;

    iget-object v0, v0, Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;->a:Lcom/avira/android/registration/BaseRegistrationPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avira/android/registration/BaseRegistrationPresenter;->a(Lcom/avira/android/registration/BaseRegistrationPresenter;Landroid/content/Intent;)Landroid/content/Intent;

    .line 443
    iget-object v0, p0, Lcom/avira/android/registration/a;->a:Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;

    invoke-static {v0}, Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;->a(Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;)Lcom/avira/android/custom/OEMessageDialogFragment;

    .line 444
    return-void
.end method
