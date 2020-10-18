.class public Lcom/eltechs/ed/fragments/ContainerSettingsFragment;
.super Landroid/support/v7/preference/PreferenceFragmentCompat;
.source "ContainerSettingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final ARG_CONT_ID:Ljava/lang/String; = "CONT_ID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method private updatePreference(Landroid/support/v7/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    instance-of v0, p1, Landroid/support/v7/preference/EditTextPreference;

    if-eqz v0, :cond_1

    .line 87
    check-cast p1, Landroid/support/v7/preference/EditTextPreference;

    .line 88
    invoke-virtual {p1}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onActivityCreated(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ContainerSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0d00a0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .line 28
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ContainerSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "CONT_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ContainerSettingsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.eltechs.ed.CONTAINER_CONFIG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    const/high16 p1, 0x7f100000

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/ed/fragments/ContainerSettingsFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onPause()V

    .line 63
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ContainerSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 45
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onResume()V

    .line 46
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ContainerSettingsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v0, 0x0

    move v1, v0

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ContainerSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/eltechs/ed/fragments/ContainerSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 53
    invoke-direct {p0, v2}, Lcom/eltechs/ed/fragments/ContainerSettingsFragment;->updatePreference(Landroid/support/v7/preference/Preference;)V

    .line 55
    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setSingleLineTitle(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-virtual {p0, p2}, Lcom/eltechs/ed/fragments/ContainerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/eltechs/ed/fragments/ContainerSettingsFragment;->updatePreference(Landroid/support/v7/preference/Preference;)V

    return-void
.end method
