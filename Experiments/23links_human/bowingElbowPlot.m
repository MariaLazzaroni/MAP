% BRE PLOT


%%%%%%%%%%%%%
figure
subplot (211)
plot (mu_dgiveny(rangeOfDynamicVariable( berdy, iDynTree.DOF_TORQUE, 'jLeftAnkle_roty'),:));
hold on
plot (mu_dgiveny(rangeOfDynamicVariable( berdy, iDynTree.DOF_TORQUE, 'jLeftHip_roty'),:));
hold on
plot (mu_dgiveny(rangeOfDynamicVariable( berdy, iDynTree.DOF_TORQUE, 'jLeftElbow_roty'),:));
    axis tight;
    grid on;  
ylabel('jointTorques')
leg = legend('jLeftAnkle','jLeftHip','jLeftElbow','Location','southeast');
                    set(leg,'Interpreter','latex');
                    set(leg,'FontSize',13);
title ('Rotation on y axis');                   

subplot(212)
plot(human_state.q(valueFromName(selectedJoints, 'jLeftAnkle_roty'),:)*180/pi);
hold on
plot(human_state.q(valueFromName(selectedJoints, 'jLeftHip_roty'),:)*180/pi);
hold on
plot(human_state.q(valueFromName(selectedJoints, 'jLeftElbow_roty'),:)*180/pi);
axis tight;
grid on; 
ylabel('jointAngles')
leg = legend('jLeftAnkle','jLeftHip','jLeftElbow','Location','southeast');
                    set(leg,'Interpreter','latex');
                    set(leg,'FontSize',13)
xlabel('frames')

%%%%%%%%%%%%%

figure
subplot (211)
plot (mu_dgiveny(rangeOfDynamicVariable( berdy, iDynTree.DOF_TORQUE, 'jRightAnkle_roty'),:));
hold on
plot (mu_dgiveny(rangeOfDynamicVariable( berdy, iDynTree.DOF_TORQUE, 'jRightHip_roty'),:));
hold on
plot (mu_dgiveny(rangeOfDynamicVariable( berdy, iDynTree.DOF_TORQUE, 'jRightElbow_roty'),:));
    axis tight;
    grid on;  
ylabel('jointTorques')
leg = legend('jRightAnkle','jRightHip','jRightElbow','Location','southeast');
                    set(leg,'Interpreter','latex');
                    set(leg,'FontSize',13);
title ('Rotation on y axis');                   

subplot(212)
plot(human_state.q(valueFromName(selectedJoints, 'jRightAnkle_roty'),:)*180/pi);
hold on
plot(human_state.q(valueFromName(selectedJoints, 'jRightHip_roty'),:)*180/pi);
hold on
plot(human_state.q(valueFromName(selectedJoints, 'jRightElbow_roty'),:)*180/pi);
axis tight;
grid on; 
ylabel('jointAngles')
leg = legend('jRightAnkle','jRightHip','jRightElbow','Location','southeast');
                    set(leg,'Interpreter','latex');
                    set(leg,'FontSize',13);
xlabel('frames')

%%%%%%%%












 